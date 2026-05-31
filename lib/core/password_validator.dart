import 'package:flutter/services.dart';

class PasswordValidator {
  const PasswordValidator._();

  static List<TextInputFormatter> get inputFormatters => const [];

  static bool containsDisallowedCharacters(String value) {
    // Keep it permissive for the assessment: reject control chars only.
    return value.runes.any((r) => r < 32);
  }
}

