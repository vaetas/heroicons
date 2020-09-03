import 'dart:io';

import 'package:recase/recase.dart';

void main(List<String> arguments) {
  print('Generating icon class');
  final directory = Directory(arguments[0]);
  final files = directory.listSync();
  final names = files.map((e) => e.name).toList();

  names.forEach((element) {
    print(
        "const HeroIcons.${makeCamelCase(element.split('.').first)}({this.color,}) : icon = 'assets/$element';");
  });
}

extension on FileSystemEntity {
  String get name => path.split(Platform.pathSeparator).last;
}

String makeCamelCase(String input) => ReCase(input).camelCase;
