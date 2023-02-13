import 'dart:io';

import 'package:heroicons/src/styles.dart';
import 'package:path/path.dart' as Path;

Future<void> main() async {
  final cacheDir = Directory('./.cache');
  final assetsDir = Directory('./assets');

  // Delete if exists a .cache directory to clone the icons into, for later
  // sorting.
  print("Cleaning cache directory...");
  if (await cacheDir.exists()) await cacheDir.delete(recursive: true);

  // Run git clone and print the results so they're visible.
  print("Cloning HeroIcons...");
  final result = await Process.run("git", ["clone", "https://github.com/tailwindlabs/heroicons.git", cacheDir.path], runInShell: true);
  stdout.write(result.stdout);
  stderr.write(result.stderr);
  await Future.wait([stdout.flush(), stderr.flush()]);

  // Now, organize the icons into an appropriate asset directory based on their
  // original location (which is ordered by a size and type double) into a
  // directory based on their HeroIconStyle.
  print("Setting up assets/ directory");
  if (!await assetsDir.exists()) await assetsDir.create();

  // First, create a generic method that can be applied to any given icon
  // style.
  final processIcons = (String size, String type, {required HeroIconStyle toStyle}) async {
    print('Processing directory: ${toStyle.name}');

    final sourceStyleDir = Directory(Path.join(cacheDir.path, "src", size, type));
    final targetStyleDir = Directory(Path.join('assets', toStyle.name));

    // Throw up an error if the source directory doesn't exist.
    if (!await sourceStyleDir.exists()) {
      stderr.writeln("Missing directory (from upstream heroicons repository): $sourceStyleDir");
      return;
    }

    // Create the target directory if it doesn't exist.
    if (!await targetStyleDir.exists()) await targetStyleDir.create();

    // Move (and overwrite) icons in assets/ directory for the current style
    // with their source-directory counterparts.
    final List<Future<void>> futures = [];
    await sourceStyleDir.list().forEach(
          (FileSystemEntity element) => futures.add(
            element.rename(Path.join(targetStyleDir.path, Path.basename(element.path))),
          ),
        );

    // Wait for all 'move's to complete.
    await Future.wait(futures);
  };

  // Then, process each of the icon styles in turn.
  await processIcons('24', 'outline', toStyle: HeroIconStyle.outline);
  await processIcons('24', 'solid', toStyle: HeroIconStyle.solid);
  await processIcons('20', 'solid', toStyle: HeroIconStyle.mini);

  // Finally, clear up.
  await cacheDir.delete(recursive: true);
}
