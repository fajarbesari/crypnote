extension StringExtensions on String {
  /// Capitalize the first letter, keep the rest lowercase
  String capitalize() {
    if (isEmpty) return this;
    return this[0].toUpperCase() + substring(1).toLowerCase();
  }

  /// Capitalize each word in the string
  String capitalizeWords() {
    return split(' ')
        .map(
          (word) => word.isEmpty
              ? word
              : word[0].toUpperCase() + word.substring(1).toLowerCase(),
        )
        .join(' ');
  }

  /// Convert to title case (like book titles)
  String toTitleCase() {
    return split(RegExp(r'\s+'))
        .map(
          (word) =>
              word.isEmpty ? word : word[0].toUpperCase() + word.substring(1),
        )
        .join(' ');
  }

  /// Remove all whitespace
  String removeWhitespace() {
    return replaceAll(RegExp(r'\s+'), '');
  }

  /// Reverse the string
  String reverse() {
    return split('').reversed.join();
  }

  /// Check if string is numeric
  bool isNumeric() {
    return double.tryParse(this) != null;
  }

  /// Truncate with ellipsis if longer than [maxLength]
  String truncate(int maxLength) {
    if (length <= maxLength) return this;
    return '${substring(0, maxLength)}...';
  }
}
