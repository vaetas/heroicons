library heroicons;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart' as p;

import 'src/icons.dart';

export 'src/icons.dart';

/// Similarly to Material Icons, use [HeroIcon] Widget to display HeroIcon.
///
/// Icons default to [HeroIconStyle.outline].
///
/// ```dart
/// HeroIcon(HeroIcons.arrowLeft)
/// ```
class HeroIcon extends StatelessWidget {
  const HeroIcon(
    this.icon, {
    this.color,
    this.size,
    this.style,
    @Deprecated('Use [HeroIcon.style] instead') this.solid = false,
  });

  final HeroIcons icon;
  final Color? color;
  final double? size;

  ///
  final HeroIconStyle? style;

  final bool solid;

  String _getIconDirName() {
    if (style != null) {
      return style!.name;
    } else {
      return solid ? 'solid' : 'outline';
    }
  }

  @override
  Widget build(BuildContext context) {
    final path = p.join(
      'packages/heroicons/assets/${_getIconDirName()}/',
      icon.name,
    );
    return SvgPicture.asset(
      '$path.svg',
      color: color ?? IconTheme.of(context).color,
      width: size ?? IconTheme.of(context).size,
      height: size ?? IconTheme.of(context).size,
      alignment: Alignment.center,
    );
  }
}

/// Select preferred icon style
enum HeroIconStyle {
  outline('outline'),
  solid('solid'),
  mini('mini');

  const HeroIconStyle(this.name);

  final String name;
}
