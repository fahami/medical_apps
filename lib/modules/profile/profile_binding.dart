import 'package:get/get.dart';
import 'package:medical_apps/modules/profile/profile_controller.dart';

class ProfileBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ProfileController(), fenix: true);
  }
}
