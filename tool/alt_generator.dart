import 'dart:io';

import 'package:recase/recase.dart';

Future<void> main() async {
  final Directory dir = Directory('assets/outline/');
  final List<FileSystemEntity> entities = await dir.list().toList();

  /// Initial file contents
  final StringBuffer buffer = StringBuffer('''
library heroicons;

class HeroIcons {
  const HeroIcons._(this.name);

  final String name;

''');

  /// Constructors for every icon name
  for (final FileSystemEntity file in entities) {
    final String filename = file.path.split('/').last;
    if (filename.contains('.svg')) {
      final ReCase reCase = ReCase(filename.replaceAll('.svg', ''));
      buffer.writeln('  /// ${reCase.titleCase} icon');
      buffer.writeln(
          "  static const HeroIcons ${reCase.camelCase} = HeroIcons._('${filename.replaceAll('.svg', '')}');");
      buffer.writeln();
    }
  }

  buffer.writeln('}');

  /// Write the file
  final File file = File('lib/src/icons.dart');
  if (file.existsSync()) {
    file.deleteSync();
  }
  file.createSync();
  file.writeAsString(buffer.toString());
}
