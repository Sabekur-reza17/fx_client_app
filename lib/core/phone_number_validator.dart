class PhoneNumberValidator {
  const PhoneNumberValidator._();

  static bool isValid(String value) {
    final digits = value.replaceAll(RegExp(r'\\D'), '');
    return digits.length >= 6;
  }

  static String toNationalDisplay(String value) => value;

  static String? toE164Digits(String value) {
    final digits = value.replaceAll(RegExp(r'\\D'), '');
    if (digits.isEmpty) return null;
    return digits;
  }
}

