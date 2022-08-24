import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_apps/core/theme/color_theme.dart';
import 'package:medical_apps/core/theme/text_theme.dart';
import 'package:medical_apps/modules/home/home_controller.dart';
import 'package:medical_apps/routes/routes.dart';
import 'package:url_launcher/url_launcher_string.dart';

class MenuDrawer extends GetView<HomeController> {
  const MenuDrawer({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 180,
              child: Column(
                children: [
                  Row(
                    children: [
                      const CircleAvatar(
                        backgroundImage:
                            AssetImage('assets/images/jpg/person.jpeg'),
                      ),
                      const SizedBox(width: 8),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          RichText(
                            text: TextSpan(
                              children: [
                                TextSpan(
                                  text: 'Angga',
                                  style: ThemeText.heading7
                                      .copyWith(fontWeight: FontWeight.w800),
                                ),
                                TextSpan(
                                  text: ' Praja',
                                  style: ThemeText.heading7
                                      .copyWith(fontWeight: FontWeight.w600),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 4),
                          Text(
                            'Membership BBLK',
                            style: ThemeText.bodyText
                                .copyWith(fontFamily: 'Proxima Nova'),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 28),
                  ListTile(
                    visualDensity: VisualDensity.compact,
                    dense: true,
                    onTap: () => Get.toNamed(Routes.profile),
                    trailing: const Icon(Icons.chevron_right),
                    title: Text('Profile Saya', style: ThemeText.disabledText),
                  ),
                  ListTile(
                    visualDensity: VisualDensity.compact,
                    dense: true,
                    onTap: () {},
                    trailing: const Icon(Icons.chevron_right),
                    title: Text('Pengaturan', style: ThemeText.disabledText),
                  ),
                  const SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () => Get.offAllNamed(Routes.login),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      primary: ThemeColor.red,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100),
                      ),
                    ),
                    child: const Text('Logout'),
                  ).marginOnly(bottom: 48),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Ikuti kami di  ',
                  style: ThemeText.heading6,
                ),
                Wrap(
                  children: controller.socialMedia
                      .map(
                        (social) => InkWell(
                          onTap: () {
                            launchUrlString(social['url']!);
                          },
                          child: SvgPicture.asset(social['image']!),
                        ).marginOnly(right: 8),
                      )
                      .toList(),
                )
              ],
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'FAQ',
                    style: ThemeText.disabledText,
                  ),
                ),
                TextButton(
                  onPressed: () {},
                  child: Text(
                    'Terms and Conditions',
                    style: ThemeText.disabledText,
                  ),
                ),
              ],
            )
          ],
        ).paddingSymmetric(horizontal: 24, vertical: 48),
      ),
    );
  }
}
