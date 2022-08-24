import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medical_apps/core/theme/color_theme.dart';
import 'package:medical_apps/core/theme/text_theme.dart';
import 'package:medical_apps/core/values/values.dart';

class CtaSection extends StatelessWidget {
  const CtaSection({
    Key? key,
    required this.title,
    required this.description,
    required this.buttonText,
    required this.vectorImage,
    required this.onPressed,
    required this.isImageRight,
  }) : super(key: key);
  final String title;
  final String description;
  final String buttonText;
  final String vectorImage;
  final VoidCallback onPressed;
  final bool isImageRight;

  @override
  Widget build(BuildContext context) {
    List<Widget> content = [
      Expanded(
        flex: 2,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title,
                style: ThemeText.baseStyle
                    .copyWith(fontWeight: FontWeight.w600, fontSize: 18)),
            const SizedBox(height: 8),
            Text(
              description,
            ),
            const SizedBox(height: 8),
            TextButton.icon(
              onPressed: onPressed,
              style: TextButton.styleFrom(
                padding: const EdgeInsets.symmetric(horizontal: 0),
              ),
              label: const Icon(Icons.arrow_forward),
              icon: Text(
                buttonText,
                style: ThemeText.heading7.copyWith(fontWeight: FontWeight.bold),
              ),
            ),
          ],
        ),
      ),
      const SizedBox(width: Values.horizontalPadding),
      Expanded(
        child: Container(
          // height: 80,

          transform: Matrix4.translationValues(0, -40, 0),
          child: SvgPicture.asset(
            vectorImage,
            width: 120,
          ),
        ),
      ),
    ];

    return Container(
      padding: const EdgeInsets.all(Values.horizontalPadding),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16),
        boxShadow: [
          BoxShadow(
            color: ThemeColor.textSecondary,
            blurRadius: 24,
            spreadRadius: 0,
            offset: const Offset(0, 18),
          ),
        ],
        color: ThemeColor.white,
      ),
      child: Row(
        children: isImageRight ? content : content.reversed.toList(),
      ),
    );
  }
}
