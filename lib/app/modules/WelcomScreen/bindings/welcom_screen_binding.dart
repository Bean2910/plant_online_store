import 'package:get/get.dart';

import '../controllers/welcom_screen_controller.dart';

class WelcomScreenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomScreenController>(
      () => WelcomScreenController(),
    );
  }
}
