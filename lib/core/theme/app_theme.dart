import 'package:flutter/material.dart';
import 'package:medical_apps/core/theme/color_theme.dart';
import 'package:medical_apps/core/theme/text_theme.dart';

class ThemeApp {
  static final ThemeData light = ThemeData.light().copyWith(
    primaryColorLight: ThemeColor.white,
    colorScheme: ThemeData().colorScheme.copyWith(
          primary: ThemeColor.navy,
          secondary: ThemeColor.turquoise,
        ),
    textTheme: TextTheme(
      subtitle1: ThemeText.heading7,
      bodyText2: ThemeText.heading7,
    ),
    toggleableActiveColor: ThemeColor.navy,
    appBarTheme: const AppBarTheme(elevation: 3),
    errorColor: ThemeColor.red,
    scaffoldBackgroundColor: Colors.white,
    inputDecorationTheme: InputDecorationTheme(
      hintStyle: ThemeText.bodyText
          .copyWith(color: ThemeColor.textDisabled, fontFamily: 'Proxima Nova'),
      errorStyle: ThemeText.bodyText.copyWith(
        color: ThemeColor.red,
        fontStyle: FontStyle.italic,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(8.0),
        borderSide: BorderSide.none,
      ),
      iconColor: ThemeColor.navy,
    ),
    buttonTheme: ButtonThemeData(
      buttonColor: ThemeColor.navy,
      textTheme: ButtonTextTheme.primary,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8.0),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        onPrimary: ThemeColor.white,
        primary: ThemeColor.navy,
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(8),
        ),
      ),
    ),
    iconTheme: IconThemeData(color: ThemeColor.navy),
  );
}
