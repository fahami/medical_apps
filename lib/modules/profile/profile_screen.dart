import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:medical_apps/core/theme/color_theme.dart';
import 'package:medical_apps/core/theme/text_theme.dart';
import 'package:medical_apps/core/values/values.dart';
import 'package:medical_apps/modules/home/widgets/app_bar.dart';
import 'package:medical_apps/modules/home/widgets/drawer.dart';
import 'package:medical_apps/modules/home/widgets/notification_cta.dart';
import 'package:medical_apps/modules/profile/widgets/profile_card.dart';
import 'package:medical_apps/modules/profile/widgets/profile_tab.dart';
import 'package:medical_apps/widgets/custom_textfield.dart';
import 'package:medical_apps/widgets/custom_textfield_label.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      endDrawer: const MenuDrawer(),
      drawerScrimColor: ThemeColor.navy.withAlpha(200),
      body: SafeArea(
        child: Column(
          children: [
            const CustomAppBar(),
            Expanded(
              child: ListView(
                children: [
                  Center(child: const ProfileTab()),
                  Container(
                    margin: const EdgeInsets.symmetric(
                        horizontal: Values.horizontalPadding),
                    padding: EdgeInsets.only(bottom: 24),
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
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        ProfileCard(),
                        SizedBox(height: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Pilih data yang ingin ditampilkan',
                              style: ThemeText.heading6.copyWith(
                                color: ThemeColor.navy,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            SizedBox(height: 16),
                            Row(
                              children: [
                                Material(
                                  color: ThemeColor.turquoise,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100)),
                                  child: IconButton(
                                      onPressed: () {
                                        print("open setting");
                                      },
                                      icon:
                                          const Icon(Icons.person_pin_rounded)),
                                ),
                                SizedBox(width: 16),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      'Data Diri',
                                      style: ThemeText.heading6.copyWith(
                                        color: ThemeColor.navy,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'Data diri anda sesuai KTP',
                                      style: ThemeText.bodyText.copyWith(
                                        color: ThemeColor.textDisabled,
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(width: 16),
                                Material(
                                  color: ThemeColor.textSecondary,
                                  borderRadius: const BorderRadius.all(
                                      Radius.circular(100)),
                                  child: IconButton(
                                      onPressed: () {
                                        print("open setting");
                                      },
                                      color: ThemeColor.textDisabled,
                                      icon: const Icon(Icons.location_pin)),
                                ),
                              ],
                            ),
                            SizedBox(height: 36),
                            CustomLabel(label: 'Nama Depan'),
                            SizedBox(height: 8),
                            CustomTextField(
                              hint: 'Nama depan',
                            ),
                            SizedBox(height: 16),
                            CustomLabel(label: 'Nama Belakang'),
                            SizedBox(height: 8),
                            CustomTextField(
                              hint: 'Nama belakang',
                            ),
                            SizedBox(height: 16),
                            CustomLabel(label: 'Email'),
                            SizedBox(height: 8),
                            CustomTextField(hint: 'Masukkan email anda'),
                            SizedBox(height: 16),
                            CustomLabel(label: 'No. Telpon'),
                            SizedBox(height: 8),
                            CustomTextField(hint: 'Masukkan no telpon anda'),
                            SizedBox(height: 16),
                            CustomLabel(label: 'No. KTP'),
                            SizedBox(height: 8),
                            CustomTextField(hint: 'Masukkan No. KTP anda'),
                            SizedBox(height: 16),
                            ListTile(
                              leading: Icon(
                                Icons.info,
                                color: ThemeColor.navy,
                              ),
                              minLeadingWidth: 0,
                              title: Text(
                                'Pastikan profile anda terisi dengan benar, data pribadi anda terjamin keamanannya',
                                style: ThemeText.disabledText,
                              ),
                            ),
                            SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {},
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      'Simpan Profile',
                                      textAlign: TextAlign.center,
                                    ),
                                  ),
                                  Icon(Icons.save_outlined),
                                ],
                              ),
                            ),
                          ],
                        ).paddingSymmetric(
                            horizontal: Values.horizontalPadding),
                      ],
                    ),
                  ),
                  SizedBox(height: Values.horizontalPadding),
                  NotificationCTA()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
