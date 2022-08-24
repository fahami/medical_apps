import 'package:flutter/material.dart';
import 'package:medical_apps/core/theme/color_theme.dart';

class ThemeText {
  static const FontWeight defaultFontWeight = FontWeight.w500;
  static TextStyle baseStyle = TextStyle(
    fontWeight: defaultFontWeight,
    fontFamily: 'Gilroy',
    color: ThemeColor.navy,
  );
  static TextStyle disabledText = bodyText.copyWith(
    color: ThemeColor.textDisabled,
    fontFamily: 'Proxima Nova',
  );

  static TextStyle heading1 = baseStyle.copyWith(fontSize: 40);
  static TextStyle heading2 = baseStyle.copyWith(fontSize: 32);
  static TextStyle heading3 = baseStyle.copyWith(fontSize: 28);
  static TextStyle heading4 = baseStyle.copyWith(fontSize: 24);
  static TextStyle heading5 = baseStyle.copyWith(fontSize: 20);
  static TextStyle heading6 = baseStyle.copyWith(fontSize: 16);
  static TextStyle heading7 = baseStyle.copyWith(fontSize: 14);
  static TextStyle bodyText = baseStyle.copyWith(fontSize: 12);
}
