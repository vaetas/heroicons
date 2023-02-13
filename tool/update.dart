import 'fetch_icons.dart' as FetchIcons;
import 'generator.dart' as Generator;

Future<void> main() async {
  print("-- Fetching icons...");
  await FetchIcons.main();

  await Future.delayed(Duration(seconds: 2));

  print("\n-- Generating new sources...");
  await Generator.main();
}
