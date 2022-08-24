import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:medical_apps/core/theme/text_theme.dart';
import 'package:medical_apps/core/values/values.dart';
import 'package:medical_apps/routes/routes.dart';
import 'package:medical_apps/widgets/custom_copyright_text.dart';
import 'package:medical_apps/widgets/custom_textfield.dart';
import 'package:medical_apps/widgets/custom_textfield_label.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListView(
          padding: const EdgeInsets.symmetric(vertical: 24),
          children: [
            RichText(
                text: TextSpan(children: [
              TextSpan(
                  text: 'Hai,',
                  style:
                      ThemeText.heading3.copyWith(fontWeight: FontWeight.w600)),
              TextSpan(
                  text: ' Selamat Datang',
                  style:
                      ThemeText.heading3.copyWith(fontWeight: FontWeight.w800)),
            ])).paddingSymmetric(horizontal: Values.horizontalPadding),
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
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomLabel(label: 'Email'),
                  SizedBox(height: 8),
                  CustomTextField(hint: 'Masukkan email anda'),
                  SizedBox(height: 40),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomLabel(label: 'Password'),
                      TextButton(
                        onPressed: () {},
                        child: Text('Lupa Password anda ?'),
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                      )
                    ],
                  ),
                  SizedBox(height: 8),
                  CustomTextField(
                      hint: 'Masukkan password anda',
                      suffixIcon: IconButton(
                          onPressed: null,
                          iconSize: 20,
                          icon: Icon(Icons.remove_red_eye_outlined))),
                  SizedBox(height: 40),
                  ElevatedButton(
                    onPressed: () => Get.toNamed(Routes.home),
                    child: Row(
                      children: [
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
                  SizedBox(height: 30),
                  Center(
                    child: RichText(
                        text: TextSpan(children: [
                      TextSpan(
                          text: 'Belum punya akun?  ',
                          style: ThemeText.disabledText),
                      WidgetSpan(
                          child: TextButton(
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        onPressed: () => Get.toNamed(Routes.register),
                        child: Text(
                          'Daftar sekarang',
                          style: ThemeText.heading7.copyWith(
                            fontWeight: FontWeight.w600,
                            fontFamily: 'Proxima Nova',
                          ),
                        ),
                      ))
                    ])).paddingSymmetric(horizontal: Values.horizontalPadding),
                  ),
                  SizedBox(height: 40),
                  Center(child: Copyright())
                ],
              ).paddingSymmetric(horizontal: Values.horizontalPadding),
            )
          ],
        ),
      ),
    );
  }
}
