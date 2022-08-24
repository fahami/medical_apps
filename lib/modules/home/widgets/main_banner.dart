import 'package:flutter/material.dart';
import 'package:medical_apps/core/theme/color_theme.dart';
import 'package:medical_apps/core/theme/text_theme.dart';
import 'package:medical_apps/core/values/values.dart';

class HomeMainBanner extends StatelessWidget {
  const HomeMainBanner({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(Values.horizontalPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: ThemeColor.shadow,
            blurRadius: 24,
            spreadRadius: 0,
            offset: const Offset(0, 18),
          ),
        ],
        gradient: LinearGradient(
          stops: [0.5, 0.99],
          colors: [
            ThemeColor.white,
            ThemeColor.greyBlue,
          ],
          begin: Alignment.centerLeft,
          end: Alignment.centerRight,
        ),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                    text: TextSpan(children: [
                  TextSpan(
                      text: 'Solusi,',
                      style: ThemeText.baseStyle
                          .copyWith(fontWeight: FontWeight.w600, fontSize: 18)),
                  TextSpan(
                      text: ' Kesehatan Anda',
                      style: ThemeText.baseStyle
                          .copyWith(fontWeight: FontWeight.w800, fontSize: 18)),
                ])),
                const SizedBox(height: 8),
                const Text(
                  'Update informasi seputar kesehatan semua bisa disini !',
                ),
                const SizedBox(height: 8),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(elevation: 15),
                  onPressed: () {},
                  child: const Text('Selengkapnya'),
                ),
              ],
            ),
          ),
          const SizedBox(width: 8),
          Expanded(
            child: Container(
              transform: Matrix4.translationValues(0, -60, 0),
              child: Image.asset(
                'assets/images/png/calendar.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
