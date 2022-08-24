import 'package:get/get.dart';
import 'package:medical_apps/modules/home/home_binding.dart';
import 'package:medical_apps/modules/home/home_screen.dart';
import 'package:medical_apps/modules/login/login_binding.dart';
import 'package:medical_apps/modules/login/login_screen.dart';
import 'package:medical_apps/modules/profile/profile_binding.dart';
import 'package:medical_apps/modules/profile/profile_screen.dart';
import 'package:medical_apps/modules/register/register_binding.dart';
import 'package:medical_apps/modules/register/register_screen.dart';
import 'package:medical_apps/routes/routes.dart';

class AppPages {
  static final pages = [
    GetPage(
      name: Routes.login,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: Routes.register,
      page: () => RegisterScreen(),
      binding: RegisterBinding(),
    ),
    GetPage(
      name: Routes.home,
      page: () => const HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: Routes.profile,
      page: () => ProfileScreen(),
      binding: ProfileBinding(),
    ),
  ];
}
