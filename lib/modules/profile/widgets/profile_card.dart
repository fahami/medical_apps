import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_apps/core/theme/color_theme.dart';
import 'package:medical_apps/core/theme/text_theme.dart';
import 'package:medical_apps/core/values/values.dart';

class ProfileCard extends StatelessWidget {
  const ProfileCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20),
      child: Container(
        height: 150,
        decoration: BoxDecoration(
          color: ThemeColor.navy,
        ),
        child: Stack(
          children: [
            Positioned(
              bottom: 0,
              right: 0,
              child: RotatedBox(
                quarterTurns: 2,
                child: SvgPicture.asset(
                  'assets/images/svg/ornamen_circle.svg',
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Positioned(
              top: 30,
              child: Row(
                children: [
                  const CircleAvatar(
                    backgroundImage:
                        AssetImage('assets/images/jpg/person.jpeg'),
                  ),
                  const SizedBox(width: 8),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'Angga',
                              style: ThemeText.heading7.copyWith(
                                fontWeight: FontWeight.w800,
                                color: ThemeColor.white,
                              ),
                            ),
                            TextSpan(
                              text: ' Praja',
                              style: ThemeText.heading7.copyWith(
                                fontWeight: FontWeight.w600,
                                color: ThemeColor.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Membership BBLK',
                        style: ThemeText.bodyText.copyWith(
                          fontFamily: 'Proxima Nova',
                          color: ThemeColor.textSecondary,
                        ),
                      )
                    ],
                  )
                ],
              ).paddingSymmetric(horizontal: Values.horizontalPadding),
            ),
            Positioned.fill(
              top: 100,
              bottom: 0,
              child: Container(
                padding: const EdgeInsets.all(14),
                decoration: BoxDecoration(
                  color: const Color(0xff1A3E78).withAlpha(200),
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Text(
                  'Lengkapi profile anda untuk memaksimalkan penggunaan aplikasi',
                  maxLines: 2,
                  style: ThemeText.bodyText.copyWith(
                    fontFamily: 'Proxima Nova',
                    color: ThemeColor.white,
                  ),
                ),
              ),
            ),
            Positioned(
              bottom: 45,
              right: 20,
              child: SvgPicture.asset(
                'assets/images/svg/ornamen_dot.svg',
                height: 36,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
