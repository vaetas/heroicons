import 'dart:io';
import 'dart:convert';

import 'package:heroicons/src/styles.dart';
import 'package:path/path.dart' as Path;

/// Fetches the latest version of HeroIcons from GitHub and sorts them into
/// the appropriate directories.
/// Optionally, [branch] can be specified to fetch a specific branch by name.
Future<void> main([List<String> arguments = const []]) async {
  final branch = arguments.isNotEmpty ? arguments.first : null;

  final cacheDir = Directory(Path.join('./.cache', branch ?? 'latest'));
  final assetsDir = Directory('./assets');

  // Delete if exists a .cache directory to clone the icons into, for later
  // sorting. Then, re-create the cache directory.
  print("Cleaning cache directory...");
  if (await cacheDir.exists()) await cacheDir.delete(recursive: true);

  // Run git clone and print the results so they're visible.
  print("Cloning HeroIcons...");
  final result = await Process.run(
      "git",
      [
        "clone",
        "https://github.com/tailwindlabs/heroicons.git",
        cacheDir.path,
        if (branch != null) ...["--branch", branch]
      ],
      runInShell: true);
  stdout.write(result.stdout);
  stderr.write(result.stderr);
  await Future.wait([stdout.flush(), stderr.flush()]);

  // Find the heroicons version from package.json.
  print("Checking version name...");
  final packageJson = File(Path.join(cacheDir.path, "package.json"));
  final packageJsonContents = await packageJson.readAsString();
  final packageData = jsonDecode(packageJsonContents);
  final heroiconsVersion = packageData['version'] as String;

  // Update the README file to include the heroicons version.
  print("Updating README.md...");
  final readmeFile = File("README.md");
  final readmeContents = await readmeFile.readAsString();
  await readmeFile.writeAsString(_updateReadmeContents(
    readmeContents,
    version: heroiconsVersion,
    date: DateTime.now(),
  ));

  // Now, organize the icons into an appropriate asset directory based on their
  // original location (which is ordered by a size and type double) into a
  // directory based on their HeroIconStyle.
  print("Setting up assets/ directory");
  if (!await assetsDir.exists()) await assetsDir.create();

  // First, create a generic method that can be applied to any given icon
  // style.
  final processIcons =
      (String size, String type, {required HeroIconStyle toStyle}) async {
    print('Processing directory: ${toStyle.name}');

    final sourceStyleDir =
        Directory(Path.join(cacheDir.path, "src", size, type));
    final targetStyleDir = Directory(Path.join('assets', toStyle.name));

    // Throw up an error if the source directory doesn't exist.
    if (!await sourceStyleDir.exists()) {
      stderr.writeln(
          "Missing directory (from upstream heroicons repository): $sourceStyleDir");
      return;
    }

    // Create the target directory if it doesn't exist.
    if (!await targetStyleDir.exists()) await targetStyleDir.create();

    // Move (and overwrite) icons in assets/ directory for the current style
    // with their source-directory counterparts.
    final List<Future<void>> futures = [];
    await sourceStyleDir.list().forEach(
          (FileSystemEntity element) => futures.add(
            element.rename(
                Path.join(targetStyleDir.path, Path.basename(element.path))),
          ),
        );

    // Wait for all 'move's to complete.
    await Future.wait(futures);
  };

  // Then, process each of the icon styles in turn.
  await processIcons('24', 'outline', toStyle: HeroIconStyle.outline);
  await processIcons('24', 'solid', toStyle: HeroIconStyle.solid);
  await processIcons('20', 'solid', toStyle: HeroIconStyle.mini);
  await processIcons('16', 'solid', toStyle: HeroIconStyle.micro);

  // Finally, clear up.
  await cacheDir.delete(recursive: true);
}

// ---------------------------------------------------------------------------

/// Months for printing the date in the README.
/// Saves having to import and depend on intl.
const _months = [
  'January',
  'February',
  'March',
  'April',
  'May',
  'June',
  'July',
  'August',
  'September',
  'October',
  'November',
  'December'
];

/// Returns the ordinal suffix for a given number. For example, 1st, 2nd, 3rd,
/// 4th, 5th, etc. This is used for printing the date in the README.
/// Saves having to import and depend on intl.
_ord(n) =>
    n.toString() +
    (n > 0
        ? ['th', 'st', 'nd', 'rd'][(n > 3 && n < 21) || n % 10 > 3 ? 0 : n % 10]
        : '');

String _updateReadmeContents(
  String contents, {
  required String version,
  required DateTime date,
}) {
  const startTag = "<!-- start:heroicons_version -->";
  const endTag = "<!-- end:heroicons_version -->";

  final fancyDate =
      '${_months[date.month - 1]} ${_ord(date.day)}, ${date.year}';

  return contents.replaceRange(
    contents.indexOf(startTag) + startTag.length,
    contents.indexOf(endTag),
    """

  <!-- 
  DO NOT MODIFY: This section is automatically generated by
  'tool/fetch_icons.dart'
  -->

  This package was last updated to use [heroicons](https://heroicons.com/)
  version [`$version`](https://github.com/tailwindlabs/heroicons/releases/tag/v$version)
  (on `$fancyDate`). If there's a newer version of HeroIcons available, please
  create an issue or pull request.

""",
  );
}
