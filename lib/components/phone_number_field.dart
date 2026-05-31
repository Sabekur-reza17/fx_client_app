import 'package:flutter/material.dart';

class PhoneNumberField extends StatelessWidget {
  const PhoneNumberField({
    super.key,
    required this.value,
    required this.label,
    required this.hint,
    required this.controller,
    required this.onChanged,
    this.onCountryTap,
    this.errorText,
    this.suffix,
  });

  final String value;
  final String label;
  final String hint;
  final TextEditingController controller;
  final ValueChanged<String> onChanged;
  final VoidCallback? onCountryTap;
  final String? errorText;
  final Widget? suffix;

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: controller,
      keyboardType: TextInputType.phone,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        errorText: errorText,
        border: const OutlineInputBorder(),
        prefixIcon: IconButton(
          onPressed: onCountryTap,
          icon: const Icon(Icons.flag_outlined),
        ),
        suffixIcon: suffix,
      ),
    );
  }
}

