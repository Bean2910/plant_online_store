import 'package:get/get.dart';

import '../controllers/lets_you_in_controller.dart';

class LetsYouInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LetsYouInController>(
      () => LetsYouInController(),
    );
  }
}
