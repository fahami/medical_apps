import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_apps/core/theme/color_theme.dart';
import 'package:medical_apps/core/theme/text_theme.dart';
import 'package:medical_apps/core/values/values.dart';
import 'package:medical_apps/modules/home/widgets/app_bar.dart';
import 'package:medical_apps/modules/home/widgets/drawer.dart';
import 'package:medical_apps/modules/home/widgets/notification_cta.dart';
import 'package:medical_apps/modules/profile/profile_controller.dart';
import 'package:medical_apps/modules/profile/widgets/profile_card.dart';
import 'package:medical_apps/modules/profile/widgets/profile_tab.dart';
import 'package:medical_apps/widgets/custom_textfield.dart';
import 'package:medical_apps/widgets/custom_textfield_label.dart';

class ProfileScreen extends GetView<ProfileController> {
  ProfileScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

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
                  const Center(child: ProfileTab()),
                  Container(
                    margin: const EdgeInsets.symmetric(
                      horizontal: Values.horizontalPadding,
                    ),
                    padding: const EdgeInsets.only(bottom: 24),
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
                        const ProfileCard(),
                        const SizedBox(height: 16),
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
                            const SizedBox(height: 16),
                            Row(
                              children: [
                                Material(
                                  color: ThemeColor.turquoise,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      print('open setting');
                                    },
                                    icon: const Icon(Icons.person_pin_rounded),
                                  ),
                                ),
                                const SizedBox(width: 16),
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
                                const SizedBox(width: 16),
                                Material(
                                  color: ThemeColor.textSecondary,
                                  borderRadius: const BorderRadius.all(
                                    Radius.circular(100),
                                  ),
                                  child: IconButton(
                                    onPressed: () {
                                      print('open setting');
                                    },
                                    color: ThemeColor.textDisabled,
                                    icon: const Icon(Icons.location_pin),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 36),
                            AutofillGroup(
                              child: Form(
                                key: _formKey,
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const CustomLabel(label: 'Nama Depan'),
                                    const SizedBox(height: 8),
                                    CustomTextField(
                                      hint: 'Nama depan',
                                      keyboardType: TextInputType.name,
                                      autofillHints: const [
                                        AutofillHints.namePrefix
                                      ],
                                      validator: (v) {
                                        if (v!.isEmpty) {
                                          return 'Nama depan tidak boleh kosong';
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(height: 16),
                                    const CustomLabel(label: 'Nama Belakang'),
                                    const SizedBox(height: 8),
                                    CustomTextField(
                                      hint: 'Nama belakang',
                                      keyboardType: TextInputType.name,
                                      autofillHints: const [
                                        AutofillHints.nameSuffix
                                      ],
                                      validator: (v) {
                                        if (v!.isEmpty) {
                                          return 'Nama belakang tidak boleh kosong';
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(height: 16),
                                    const CustomLabel(label: 'Email'),
                                    const SizedBox(height: 8),
                                    CustomTextField(
                                      hint: 'Masukkan email anda',
                                      keyboardType: TextInputType.emailAddress,
                                      autofillHints: const [
                                        AutofillHints.email
                                      ],
                                      validator: (v) {
                                        if (v!.isEmpty) {
                                          return 'Email tidak boleh kosong';
                                        } else if (!GetUtils.isEmail(v)) {
                                          return 'Email tidak valid';
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(height: 16),
                                    const CustomLabel(label: 'No. Telpon'),
                                    const SizedBox(height: 8),
                                    CustomTextField(
                                      hint: 'Masukkan no telpon anda',
                                      keyboardType: TextInputType.phone,
                                      autofillHints: const [
                                        AutofillHints.telephoneNumber,
                                        AutofillHints.telephoneNumberDevice
                                      ],
                                      validator: (v) {
                                        if (v!.isEmpty) {
                                          return 'Nomor telepon tidak boleh kosong';
                                        } else if (!GetUtils.isPhoneNumber(v)) {
                                          return 'Nomor telepon tidak valid';
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(height: 16),
                                    const CustomLabel(label: 'No. KTP'),
                                    const SizedBox(height: 8),
                                    CustomTextField(
                                      hint: 'Masukkan No. KTP anda',
                                      keyboardType: TextInputType.number,
                                      validator: (v) {
                                        if (v!.isEmpty) {
                                          return 'No. KTP tidak boleh kosong';
                                        } else if (v.length > 16) {
                                          return 'No. KTP tidak boleh lebih dari 16 karakter';
                                        }
                                        return null;
                                      },
                                    ),
                                    const SizedBox(height: 16),
                                  ],
                                ),
                              ),
                            ),
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
                            const SizedBox(height: 16),
                            ElevatedButton(
                              onPressed: () {
                                if (_formKey.currentState!.validate()) {
                                  print('validate');
                                }
                              },
                              child: Row(
                                children: const [
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
                          horizontal: Values.horizontalPadding,
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: Values.horizontalPadding),
                  const NotificationCTA()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
