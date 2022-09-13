# HeroIcons

[heroicons](https://heroicons.com/) port to Flutter. This package renders the icons as SVG pictures.

## Usage

```dart
class MyExampleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return HeroIcon(
      HeroIcons.academicCap,
      color: Colors.red,
      size: 30,
      style: HeroIconStyle.outline, // Outlined icons are used by default.
    );
  }
}
```

## Install

Add `heroicons` package into your `pubspec.yaml`.

```yaml
dependencies:
  heroicons: # Latest version
```

You can also run `flutter pub add heroicons` to quickly add latest version from your CLI.

## Development

Run source code generation to create `icons.dart` file with named constructor for every icon.

```
dart tool/generator.dart
```

In case this doesn't work for you try this insead.

```
dart tool/alt_generator.dart
```