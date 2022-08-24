import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_apps/core/theme/color_theme.dart';
import 'package:medical_apps/core/theme/text_theme.dart';
import 'package:medical_apps/core/values/values.dart';
import 'package:medical_apps/modules/register/register_controller.dart';
import 'package:medical_apps/routes/routes.dart';
import 'package:medical_apps/widgets/custom_copyright_text.dart';
import 'package:medical_apps/widgets/custom_textfield.dart';
import 'package:medical_apps/widgets/custom_textfield_label.dart';

class RegisterScreen extends GetView<RegisterController> {
  RegisterScreen({Key? key}) : super(key: key);
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 24),
          children: [
            RichText(
              text: TextSpan(
                children: [
                  TextSpan(
                    text: 'Hai,',
                    style: ThemeText.heading3
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  TextSpan(
                    text: ' Selamat Datang',
                    style: ThemeText.heading3
                        .copyWith(fontWeight: FontWeight.w800),
                  ),
                ],
              ),
            ).paddingSymmetric(horizontal: Values.horizontalPadding),
            const SizedBox(height: 8),
            Text(
              'Silahkan login untuk melanjutkan',
              style: ThemeText.bodyText.copyWith(fontFamily: 'Proxima Nova'),
            ).paddingSymmetric(horizontal: Values.horizontalPadding),
            Image.asset(
              'assets/images/png/riwayat_medis.png',
              fit: BoxFit.cover,
            ),
            Obx(
              () => Form(
                key: _formKey,
                child: AutofillGroup(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          Expanded(
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
                              ],
                            ),
                          ),
                          const SizedBox(width: Values.horizontalPadding),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
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
                              ],
                            ),
                          ),
                        ],
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
                      const CustomLabel(label: 'Email'),
                      const SizedBox(height: 8),
                      CustomTextField(
                        hint: 'Masukkan email anda',
                        keyboardType: TextInputType.emailAddress,
                        autofillHints: const [AutofillHints.email],
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
                      const CustomLabel(label: 'Password'),
                      const SizedBox(height: 8),
                      CustomTextField(
                        hint: 'Masukkan password anda',
                        keyboardType: TextInputType.visiblePassword,
                        autofillHints: const [
                          AutofillHints.newPassword,
                          AutofillHints.password
                        ],
                        suffixIcon: IconButton(
                          onPressed: () =>
                              controller.isObscuredPassword.toggle(),
                          iconSize: 20,
                          color: ThemeColor.textDisabled,
                          icon: controller.isObscuredPassword.value
                              ? const Icon(Icons.visibility_outlined)
                              : const Icon(Icons.visibility_off_outlined),
                        ),
                        obscureText: controller.isObscuredPassword.value,
                        onChanged: (s) => controller.password(s),
                        validator: (v) {
                          if (v!.isEmpty) {
                            return 'Password tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 16),
                      const CustomLabel(label: 'Konfirmasi Password'),
                      const SizedBox(height: 8),
                      CustomTextField(
                        hint: 'Konfirmasi password anda',
                        keyboardType: TextInputType.visiblePassword,
                        autofillHints: const [
                          AutofillHints.newPassword,
                          AutofillHints.password
                        ],
                        suffixIcon: IconButton(
                          onPressed: () =>
                              controller.isObscuredConfirmPassword.toggle(),
                          iconSize: 20,
                          color: ThemeColor.textDisabled,
                          icon: controller.isObscuredConfirmPassword.value
                              ? const Icon(Icons.visibility_outlined)
                              : const Icon(Icons.visibility_off_outlined),
                        ),
                        obscureText: controller.isObscuredConfirmPassword.value,
                        onChanged: (s) => controller.confirmPassword(s),
                        validator: (v) {
                          if (v != controller.password.value) {
                            return 'Password tidak sama';
                          }
                          return null;
                        },
                      ),
                      const SizedBox(height: 40),
                      ElevatedButton(
                        onPressed: () {
                          if (_formKey.currentState!.validate()) {
                            Get.toNamed(Routes.login);
                          }
                        },
                        child: Row(
                          children: const [
                            Expanded(
                              child: Text(
                                'Register',
                                textAlign: TextAlign.center,
                              ),
                            ),
                            Icon(Icons.arrow_forward),
                          ],
                        ),
                      ),
                      const SizedBox(height: 30),
                      Center(
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: 'Sudah punya akun?  ',
                                style: ThemeText.disabledText,
                              ),
                              WidgetSpan(
                                child: TextButton(
                                  style: TextButton.styleFrom(
                                    padding: EdgeInsets.zero,
                                    minimumSize: Size.zero,
                                    tapTargetSize:
                                        MaterialTapTargetSize.shrinkWrap,
                                  ),
                                  onPressed: () => Get.back(),
                                  child: Text(
                                    'Login sekarang',
                                    style: ThemeText.heading7.copyWith(
                                      fontWeight: FontWeight.w600,
                                      fontFamily: 'Proxima Nova',
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ).paddingSymmetric(
                          horizontal: Values.horizontalPadding,
                        ),
                      ),
                      const SizedBox(height: 40),
                      const Center(child: Copyright())
                    ],
                  ).paddingSymmetric(horizontal: Values.horizontalPadding),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
