// @dart=2.9
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:recase/recase.dart';

Future<void> main() async {
  final names = _getFileNames();
  final file = File(p.join('lib', 'src', 'icons.dart'));

  final iconClass = Class(
    (b) => b
      ..name = 'HeroIcons'
      ..fields.addAll(
        [
          Field((b) {
            b.name = 'name';
            b.type = Reference("final String");
          }),
          ...names.map((fileName) {
            return Field((b) {
              final name = p.basenameWithoutExtension(fileName);
              final recase = ReCase(name);
              b.name = recase.camelCase;
              b.assignment = Code("HeroIcons._('$name')");
              b.modifier = FieldModifier.constant;
              b.static = true;
              b.docs.add('/// ${recase.titleCase} icon');
            });
          }),
        ],
      )
      ..constructors.add(
        Constructor((b) {
          b.name = '_';
          b.constant = true;
          b.requiredParameters.add(Parameter((b) {
            b.name = 'name';
            b.toThis = true;
          }));
        }),
      ),
  );

  final lib = Library((b) {
    b.body.add(iconClass);
  });

  final emitter = DartEmitter();
  final x = lib.accept(emitter);
  await file.writeAsString(DartFormatter().format('library heroicons; $x'));
}

List<String> _getFileNames() {
  print('Generating icon class');
  final files = Directory(p.join('assets', 'outline')).listSync();
  return files
      .map((e) => e.name)
      .where((element) => element.contains('.svg'))
      .toList();
}

extension on FileSystemEntity {
  String get name => path.split(Platform.pathSeparator).last;
}
