library heroicons;

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:path/path.dart' as path;

import '/src/icons.g.dart';
import '/src/styles.dart';

/// Similarly to [IconTheme], you can set the default options for all icons.
/// Simply add [HeroIconTheme] to the widget tree, ideally as close to your
/// [MaterialApp] as possible:
///
/// ```dart
/// MaterialApp(
///   // ...
///   child: HeroIconTheme(
///     style: HeroIconStyle.solid,
///     child: // ...
///   ),
/// ),
/// ```
///
/// If a [HeroIconTheme] exists as an ancestor of a [HeroIcon], the properties
/// on the theme will be used as defaults - if they are not specified on the
/// [HeroIcon].
class HeroIconTheme extends InheritedWidget {
  final HeroIconStyle style;

  /// Set to true to allow each [HeroIcon] to use the `defaultSemanticLabel`
  /// for an icon if a `semanticLabel` is not set.
  final bool useDefaultSemanticLabel;

  const HeroIconTheme({
    super.key,
    required this.style,
    required super.child,
    this.useDefaultSemanticLabel = false,
  });

  static bool shouldUseSemanticLabel(BuildContext context) {
    return context
            .dependOnInheritedWidgetOfExactType<HeroIconTheme>()
            ?.useDefaultSemanticLabel ??
        false;
  }

  /// Attempts to get the [style] from an ancestor [HeroIconTheme] widget.
  /// If this is found, the style is returned - otherwise null is returned and
  /// a fallback may be determined.
  static HeroIconStyle? maybeStyleOf(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<HeroIconTheme>()?.style;
  }

  /// Assumes that there is an ancestor [HeroIconTheme] theme and gets the
  /// [style] property from it. If there is, in fact, no ancestor, an exception
  /// is thrown.
  static HeroIconStyle styleOf(BuildContext context) {
    final HeroIconStyle? result = maybeStyleOf(context);
    assert(result != null, 'There is no HeroIconStyle in context.');
    return result!;
  }

  @override
  bool updateShouldNotify(covariant HeroIconTheme oldWidget) =>
      style != oldWidget.style;
}

/// Similarly to Material Icons, use [HeroIcon] Widget to display HeroIcon.
///
/// The default [style] is [HeroIconStyle.outline], you can change this with
/// a [HeroIconTheme].
///
/// Other defaults such as [color] and [size] are extracted from the icon
/// theme of the context.
///
/// ```dart
/// HeroIcon(HeroIcons.arrowLeft)
/// ```
class HeroIcon extends StatelessWidget {
  const HeroIcon(
    this.icon, {
    super.key,
    this.color,
    this.size,
    this.style,
    this.semanticLabel,
  });

  final Color? color;
  final double? size;

  /// The icon to be displayed. One of [HeroIcons].
  final HeroIcons icon;

  /// The preferred icon style. See [HeroIconStyle]. If not specified, defaults
  /// to 'outline'.
  final HeroIconStyle? style;

  /// The semantic label for the icon.
  ///
  /// This is announced by VoiceOver or TalkBack when in accessibility mode
  /// and is not shown in the UI.
  ///
  /// Null by default, but every icon has a `defaultSemanticLabel` option that
  /// may be used. If a [HeroIconsTheme] is present as an ancestor, and has
  /// [HeroIconsTheme.useDefaultSemanticLabel] to `true`, this will be set to
  /// `defaultSemanticLabel` for an icon unless this field is explicitly
  /// specified.
  final String? semanticLabel;

  @override
  Widget build(BuildContext context) {
    // Use the explicit style name, if specified. Otherwise, check if there is
    // a HeroIconTheme to use. Finally, if none of these are available, resort
    // to 'outline' as a default.
    final styleName =
        (style ?? HeroIconTheme.maybeStyleOf(context) ?? HeroIconStyle.outline)
            .name;

    // Locate the icon asset.
    final iconPath =
        path.join('packages/heroicons/assets/$styleName/', icon.name);

    // Determine the size of the icon. Ideally, use the value specified,
    // otherwise default to that of the icon theme. Finally, if the IconTheme
    // cannot be found at all, we resort to the default value of 24.0 (which
    // IconTheme also uses as a default).
    final size = this.size ?? IconTheme.of(context).size ?? 24.0;

    // Render in an SvgPicture.
    final iconWidget = FittedBox(
      fit: BoxFit.scaleDown,
      child: SvgPicture.asset(
        '$iconPath.svg',

        // This colorFilter replaces the old way of specifying an SVG color -
        // where BlendMode was left as the default srcIn (now explicitly set)
        // and the color was set with the color property.
        //
        // IconTheme specifies black as a fallback color, however we cannot rely
        // on this as there may be a case where an IconTheme cannot be found at
        // all causing IconTheme.of(context).color to be null, hence black is
        // manually specified as a default.
        colorFilter: ColorFilter.mode(
          color ?? IconTheme.of(context).color ?? Colors.black,
          BlendMode.srcIn,
        ),

        // Likewise, default values are specified for width and height.
        width: size,
        height: size,
        alignment: Alignment.center,
        fit: BoxFit.contain,
      ),
    );

    return Semantics(
      label: semanticLabel ??
          (HeroIconTheme.shouldUseSemanticLabel(context)
              ? icon.defaultSemanticLabel
              : null),
      child: ExcludeSemantics(
        child: iconWidget,
      ),
    );
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties.add(
        StringProperty('icon', icon.name, ifEmpty: '<empty>', showName: false));
    properties.add(StringProperty('style', style?.name,
        ifEmpty: '<empty>', showName: false));
    properties.add(DoubleProperty('size', size, defaultValue: null));
    properties.add(ColorProperty('color', color, defaultValue: null));
  }
}
