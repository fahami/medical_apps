import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_apps/core/theme/color_theme.dart';
import 'package:medical_apps/core/theme/text_theme.dart';
import 'package:medical_apps/core/values/values.dart';

class NotificationCTA extends StatelessWidget {
  const NotificationCTA({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      decoration: BoxDecoration(color: ThemeColor.navy),
      child: Stack(
        children: [
          Positioned(
            top: 20,
            right: Get.width * 0.33,
            child: SvgPicture.asset(
              'assets/images/svg/ornamen_dot.svg',
              height: 36,
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: SvgPicture.asset(
              'assets/images/svg/ornamen_circle.svg',
              fit: BoxFit.cover,
            ),
          ),
          Center(
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    'Ingin mendapat update dari kami ?',
                    style: ThemeText.heading6.copyWith(
                      fontWeight: FontWeight.w600,
                      color: ThemeColor.white,
                    ),
                  ),
                ),
                const SizedBox(width: 24),
                Expanded(
                  child: TextButton.icon(
                    icon: Text(
                      'Dapatkan notifikasi',
                      style: ThemeText.heading7.copyWith(
                        color: ThemeColor.white,
                      ),
                    ),
                    label: Icon(
                      Icons.arrow_forward,
                      color: ThemeColor.white,
                    ),
                    onPressed: () {
                      print('dapatkan notifikasi');
                    },
                  ),
                )
              ],
            ).paddingAll(Values.horizontalPadding),
          ),
        ],
      ),
    );
  }
}
