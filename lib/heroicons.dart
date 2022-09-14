library heroicons;

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart' as p;

import 'src/icons.dart';

export 'src/icons.dart';

/// Similarly to Material Icons, use [HeroIcon] Widget to display HeroIcon.
///
/// Icons default to [HeroIconStyle.outline]. For other icons, set [style] to
/// either [HeroIconStyle.solid] or [HeroIconStyle.mini].
///
/// ```dart
/// HeroIcon(HeroIcons.arrowLeft)
/// ```
class HeroIcon extends StatelessWidget {
  const HeroIcon(
    this.icon, {
    Key? key,
    this.color,
    this.size,
    this.style = HeroIconStyle.outline,
  }) : super(key: key);

  final HeroIcons icon;
  final Color? color;
  final double? size;
  final HeroIconStyle style;

  @override
  Widget build(BuildContext context) {
    String style = 'outline';
    switch (this.style) {
      case HeroIconStyle.solid:
        style = 'solid';
        break;
      case HeroIconStyle.mini:
        style = 'mini';
        break;
      case HeroIconStyle.outline:
        style = 'outline';
        break;
    }
    final String path = p.join(
      'packages/heroicons/assets/$style/',
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

enum HeroIconStyle {
  solid,
  outline,
  mini,
}
