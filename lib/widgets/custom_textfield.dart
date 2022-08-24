import 'package:flutter/material.dart';
import 'package:medical_apps/core/theme/color_theme.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    Key? key,
    this.hint,
    this.label,
    this.prefixIcon,
    this.suffixIcon,
    this.border,
    this.borderRadius,
    this.validator,
    this.obscureText = false,
    this.onChanged,
    this.keyboardType,
    this.autofillHints,
  }) : super(key: key);

  final String? hint;
  final String? label;
  final Widget? prefixIcon;
  final Widget? suffixIcon;
  final InputBorder? border;
  final double? borderRadius;
  final String? Function(String?)? validator;
  final bool obscureText;
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final Iterable<String>? autofillHints;
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10.0,
      shadowColor: ThemeColor.shadow.withAlpha(50),
      borderRadius: BorderRadius.all(Radius.circular(borderRadius ?? 8)),
      child: TextFormField(
        key: key,
        autovalidateMode: AutovalidateMode.onUserInteraction,
        enableSuggestions: true,
        textAlignVertical: TextAlignVertical.center,
        validator: validator,
        obscureText: obscureText,
        keyboardType: keyboardType,
        onChanged: onChanged,
        autofillHints: autofillHints,
        decoration: InputDecoration(
          hintText: hint,
          labelText: label,
          filled: true,
          fillColor: ThemeColor.white,
          contentPadding:
              const EdgeInsets.symmetric(horizontal: 12, vertical: 4),
          suffixIcon: suffixIcon,
          prefixIcon: prefixIcon,
          border: border,
        ),
      ),
    );
  }
}
