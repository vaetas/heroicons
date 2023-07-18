import 'dart:io';

import 'fetch_icons.dart' as FetchIcons;
import 'generator.dart' as Generator;

Future<void> main() async {
  // Fetch the latest icons. Optionally, a branch can be specified for
  // FetchIcons but currently this only works for v2+ branches.
  print("-- Fetching icons...");
  await FetchIcons.main();

  // Wait to ensure all files are written and IDEs have had a chance to
  // catch up.
  await Future.delayed(Duration(seconds: 2));

  // Generate the new sources.
  print("\n-- Generating new sources...");
  await Generator.main();

  // Delete the cache directory.
  print("\n-- Cleaning up...");
  Directory('./.cache').deleteSync(recursive: true);

  print("\n-- Done!");
}
