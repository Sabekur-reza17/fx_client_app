import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StandardTextField extends StatelessWidget {
  const StandardTextField({
    super.key,
    required this.label,
    required this.hint,
    required this.value,
    required this.onChanged,
    this.obscureText = false,
    this.suffixIcon,
    this.errorText,
    this.inputFormatters,
  });

  final String label;
  final String hint;
  final String value;
  final ValueChanged<String> onChanged;
  final bool obscureText;
  final Widget? suffixIcon;
  final String? errorText;
  final List<TextInputFormatter>? inputFormatters;

  @override
  Widget build(BuildContext context) {
    return TextField(
      obscureText: obscureText,
      inputFormatters: inputFormatters,
      onChanged: onChanged,
      decoration: InputDecoration(
        labelText: label,
        hintText: hint,
        suffixIcon: suffixIcon,
        errorText: errorText,
        border: const OutlineInputBorder(),
      ),
      controller: TextEditingController.fromValue(
        TextEditingValue(
          text: value,
          selection: TextSelection.collapsed(offset: value.length),
        ),
      ),
    );
  }
}

