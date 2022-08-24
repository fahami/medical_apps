import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_apps/core/theme/color_theme.dart';
import 'package:medical_apps/core/theme/text_theme.dart';
import 'package:medical_apps/core/values/values.dart';
import 'package:medical_apps/modules/login/login_controller.dart';
import 'package:medical_apps/routes/routes.dart';
import 'package:medical_apps/widgets/custom_copyright_text.dart';
import 'package:medical_apps/widgets/custom_textfield.dart';
import 'package:medical_apps/widgets/custom_textfield_label.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({Key? key}) : super(key: key);
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
                        .copyWith(fontWeight: FontWeight.w500),
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
            Form(
              key: _formKey,
              child: AutofillGroup(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
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
                    const SizedBox(height: 40),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const CustomLabel(label: 'Password'),
                        TextButton(
                          onPressed: () {},
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.zero,
                            minimumSize: Size.zero,
                            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          ),
                          child: const Text('Lupa Password anda ?'),
                        )
                      ],
                    ),
                    const SizedBox(height: 8),
                    Obx(
                      () => CustomTextField(
                        hint: 'Masukkan password anda',
                        obscureText: controller.isObscured.value,
                        keyboardType: TextInputType.visiblePassword,
                        autofillHints: const [AutofillHints.password],
                        suffixIcon: IconButton(
                          onPressed: () => controller.isObscured.toggle(),
                          iconSize: 20,
                          color: ThemeColor.textDisabled,
                          icon: controller.isObscured.value
                              ? const Icon(Icons.visibility_outlined)
                              : const Icon(Icons.visibility_off_outlined),
                        ),
                        validator: (v) {
                          if (v!.isEmpty) {
                            return 'Password tidak boleh kosong';
                          }
                          return null;
                        },
                      ),
                    ),
                    const SizedBox(height: 40),
                    ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          Get.toNamed(Routes.home);
                        }
                      },
                      child: Row(
                        children: const [
                          Expanded(
                            child: Text(
                              'Login',
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
                              text: 'Belum punya akun?  ',
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
                                onPressed: () => Get.toNamed(Routes.register),
                                child: Text(
                                  'Daftar sekarang',
                                  style: ThemeText.heading7.copyWith(
                                    fontWeight: FontWeight.w600,
                                    fontFamily: 'Proxima Nova',
                                  ),
                                ),
                              ),
                            )
                          ],
                        ),
                      ).paddingSymmetric(horizontal: Values.horizontalPadding),
                    ),
                    const SizedBox(height: 40),
                    const Center(child: Copyright())
                  ],
                ).paddingSymmetric(horizontal: Values.horizontalPadding),
              ),
            )
          ],
        ),
      ),
    );
  }
}
