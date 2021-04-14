library heroicons;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart' as p;

import 'src/icons.dart';

export 'src/icons.dart';

/// Similarly to Material Icons, use [HeroIcon] Widget to display HeroIcon.
///
/// Icons default to outlined style. For solid icons, set [solid] to true.
///
/// ```dart
/// HeroIcon(HeroIcons.arrowLeft)
/// ```
class HeroIcon extends StatelessWidget {
  const HeroIcon(
    this.icon, {
    this.color,
    this.size,
    this.solid = false,
  });

  final HeroIcons icon;
  final Color? color;
  final double? size;
  final bool solid;

  @override
  Widget build(BuildContext context) {
    final path = p.join(
      'packages/heroicons/assets/${solid ? 'solid' : 'outline'}/',
      icon.name,
    );
    return SvgPicture.asset(
      '$path.svg',
      color: color ?? IconTheme.of(context).color,
      width: size,
      height: size,
      alignment: Alignment.center,
    );
  }
}
