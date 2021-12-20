extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1)}' : '';
  String toTitleCase() => this.toLowerCase().split(' ').map((word) {
        word.trim();
        String leftText =
            (word.length > 1) ? word.substring(1, word.length) : '';
        return word.length > 0 ? word[0].toUpperCase() + leftText : "";
      }).join(' ');

  String get toSvg => "assets/svgs/$this.svg";
  String get toPng => "assets/images/$this.png";
}
