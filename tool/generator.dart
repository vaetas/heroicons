import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:path/path.dart' as p;
import 'package:recase/recase.dart';

Future<void> main() async {
  print('Scanning directories...');
  final names = await _getFileNames();
  names.sort((a, b) => a.compareTo(b));

  print('Generating icons.g.dart...');
  final file = File(p.join('lib', 'src', 'icons.g.dart'));

  final iconClass = Enum(
    (b) => b
      ..name = 'HeroIcons'
      ..values.addAll([
        ...names.map((fileName) {
          return EnumValue((b) {
            final name = p.basenameWithoutExtension(fileName);
            final recase = ReCase(name);

            b.name = recase.camelCase;
            b.constructorName = '_';
            b.arguments.add(literal(name));
            // FIXME: need to be updated with result of https://github.com/dart-lang/code_builder/issues/397
            b.arguments.add(CodeExpression(Code('defaultSemanticLabel: "${recase.sentenceCase} icon"')));
            b.docs.add('/// ${recase.sentenceCase} icon');
          });
        }),
      ])
      ..fields.addAll(
        [
          Field((b) {
            b.name = 'name';
            b.type = Reference("final String");
            b.docs.add('/// The name of the icon file.');
          }),
          Field((b) {
            b.name = 'defaultSemanticLabel';
            b.type = Reference("final String?");
            b.docs.add('/// Specifies the default semantic label for the icon.');
            b.docs.add('/// This can be read by TalkBack/VoiceOver in the event that another is not');
            b.docs.add('/// manually supplied.');
            b.docs.add('/// This is automatically generated based on the name of the icon.');
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

          b.optionalParameters.add(Parameter((b) {
            b.name = 'defaultSemanticLabel';
            b.toThis = true;
            b.named = true;
          }));
        }),
      ),
  );

  final lib = Library((b) {
    b.body.add(iconClass);
  });

  final emitter = DartEmitter();
  final x = lib.accept(emitter);
  await file.writeAsString(DartFormatter().format(
    '// Auto-generated file.\n'
    '// DO NOT MODIFY BY HAND - YOUR CHANGES WILL BE OVERWRITTEN.\n'
    '\n'
    '/// The heroicons icon set in Flutter.\n'
    '/// https://heroicons.com\n'
    'library heroicons; '
    '$x',
  ));
}

Future<List<String>> _getFileNames() async {
  return await Directory(p.join('assets', 'outline')).list().where((entity) => entity.name.endsWith('.svg')).map((entity) => entity.name).toList();
}

extension on FileSystemEntity {
  String get name => path.split(Platform.pathSeparator).last;
}
