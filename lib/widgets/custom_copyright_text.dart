import 'package:flutter/material.dart';
import 'package:medical_apps/core/theme/color_theme.dart';
import 'package:medical_apps/core/theme/text_theme.dart';

class Copyright extends StatelessWidget {
  const Copyright({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      '© SILK. all right reserved.',
      style: ThemeText.bodyText
          .copyWith(fontFamily: 'Proxima Nova', color: ThemeColor.textDisabled),
    );
  }
}
