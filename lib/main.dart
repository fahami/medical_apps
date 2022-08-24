import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';
import 'package:intl/date_symbol_data_local.dart';
import 'package:medical_apps/core/theme/app_theme.dart';
import 'package:medical_apps/routes/pages.dart';
import 'package:medical_apps/routes/routes.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  initializeDateFormatting('ID');
  Intl.defaultLocale = 'id_ID';
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Medical Apps',
      theme: ThemeApp.light,
      getPages: AppPages.pages,
      initialRoute: Routes.login,
    );
  }
}
