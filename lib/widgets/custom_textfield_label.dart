import 'package:flutter/material.dart';
import 'package:medical_apps/core/theme/text_theme.dart';

class CustomLabel extends StatelessWidget {
  const CustomLabel({Key? key, required this.label}) : super(key: key);
  final String label;
  @override
  Widget build(BuildContext context) {
    return Text(
      label,
      style: ThemeText.heading6.copyWith(fontWeight: FontWeight.w600),
    );
  }
}
