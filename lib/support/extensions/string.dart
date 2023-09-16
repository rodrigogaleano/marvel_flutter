extension StringExtension on String {
  String formattedCharacterName() {
    return removeTextInParentheses().withoutHyphens().toLowerCase();
  }

  String removeTextInParentheses() {
    return replaceAll(RegExp(r'\([^)]*\)'), '').trim();
  }

  String withoutHyphens() {
    return replaceAll(RegExp(r'[-\s]+'), ' ');
  }
}
