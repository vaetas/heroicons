import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:recase/recase.dart';

Future<void> main() async {
  final List<String> names = _getFileNames();
  final File file = File(p.join('lib', 'src', 'icons.dart'));

  final Class iconClass = Class(
    (ClassBuilder b) => b
      ..name = 'HeroIcons'
      ..fields.addAll(
        <Field>[
          Field((FieldBuilder b) {
            b.name = 'name';
            b.type = const Reference('final String');
          }),
          ...names.map((String fileName) {
            return Field((FieldBuilder b) {
              final String name = p.basenameWithoutExtension(fileName);
              final ReCase recase = ReCase(name);
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
        Constructor((ConstructorBuilder b) {
          b.name = '_';
          b.constant = true;
          b.requiredParameters.add(Parameter((ParameterBuilder b) {
            b.name = 'name';
            b.toThis = true;
          }));
        }),
      ),
  );

  final Library lib = Library((LibraryBuilder b) {
    b.body.add(iconClass);
  });

  final DartEmitter emitter = DartEmitter();
  final StringSink x = lib.accept(emitter);
  await file.writeAsString(DartFormatter().format('library heroicons; $x'));
}

List<String> _getFileNames() {
  final List<FileSystemEntity> files =
      Directory(p.join('assets', 'outline')).listSync();
  return files
      .map((FileSystemEntity e) => e.name)
      .where((String element) => element.contains('.svg'))
      .toList();
}

extension on FileSystemEntity {
  String get name => path.split(Platform.pathSeparator).last;
}
