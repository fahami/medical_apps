import 'package:get/get.dart';
import 'package:medical_apps/modules/register/register_controller.dart';

class RegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => RegisterController());
  }
}
