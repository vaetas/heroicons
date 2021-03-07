// @dart=2.9
import 'dart:io';

import 'package:code_builder/code_builder.dart';
import 'package:dart_style/dart_style.dart';
import 'package:recase/recase.dart';
import 'package:path/path.dart' as p;

Future<void> main() async {
  final names = _getFileNames();
  final file = File(p.join('lib', 'heroicons.dart'));

  final iconClass = Class(
    (b) => b
      ..name = 'HeroIcons'
      ..extend = Reference('StatelessWidget')
      ..fields.addAll(
        [
          Field((b) {
            b.name = 'icon';
            b.type = Reference('final String');
          }),
          Field((b) {
            b.name = 'color';
            b.type = Reference('final Color?');
          }),
          Field((b) {
            b.name = 'size';
            b.type = Reference('final double?');
          }),
        ],
      )
      ..methods.add(
        Method((b) {
          b.name = 'build';
          b.returns = Reference('Widget');
          b.annotations.add(Reference('override'));
          b.requiredParameters.add(Parameter((b) {
            b.name = 'context';
            b.type = Reference('BuildContext', 'package:flutter/material.dart');
          }));
          b.body = Code(
            r'''
            return SvgPicture.asset(
              'packages/heroicons/assets/outline/$icon',
              color: color ?? IconTheme.of(context).color,
              width: size,
              height: size,
              alignment: Alignment.center,
            );
            ''',
          );
        }),
      )
      ..constructors.addAll(
        names.map(
          (e) => Constructor((b) {
            b.name = e.split('.')[0].camelCase;
            b.initializers.addAll(
              [
                Code("icon = '$e'"),
              ],
            );
            b.optionalParameters.addAll(
              [
                Parameter((b) {
                  b.name = 'color';
                  b.toThis = true;
                  b.named = true;
                }),
                Parameter((b) {
                  b.name = 'size';
                  b.toThis = true;
                  b.named = true;
                }),
              ],
            );
            b.constant = true;
          }),
        ),
      ),
  );

  final lib = Library((b) {
    b.directives.addAll(
      [
        Directive.import('package:flutter/material.dart'),
        Directive.import('package:flutter_svg/flutter_svg.dart'),
      ],
    );
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
