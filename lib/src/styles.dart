/// Style options for HeroIcons. If an option is missing, please open an issue
/// or pull request into the HeroIcons Flutter repository.
enum HeroIconStyle {
  outline('outline'),
  solid('solid'),
  mini('mini'),
  micro('micro');

  const HeroIconStyle(this.name);

  final String name;
}
