# Development

Fetch new icons and automatically generate source code for `heroicons.dart` (runs both of the below
steps)

```
dart tool/update.dart
```

## Extra Commands

If, for any reason, you need to run the steps separately, you can do so as follows:

- Fetch new icons, organize into `assets/` and update the README.
  ```bash
  dart tool/fetch_icons.dart
  ```

  Optionally, a branch may be specified to fetch icons from. For example, to fetch icons from the
  `dev` branch:
  ```bash
  dart tool/fetch_icons.dart dev
  ```

  Note that older branches (i.e., `v1`) won't work yet as the SVGs are organized differently and not
  all styles are
  available.

- Run source code generation to create `heroicons.dart` file with an enum entry for every icon.
  ```bash
  dart tool/generator.dart
  ```
