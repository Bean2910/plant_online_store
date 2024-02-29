import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class WelcomScreenController extends GetxController {
  //TODO: Implement WelcomScreenController
  Future myFuture() async {

    // await new Future.delayed(new Duration(seconds: 1);
    // Get.toNamed(Routes.WALKTHROUGH);
    Future<void>.delayed(Duration(seconds: 2)).then((value) =>Get.toNamed(Routes.WALKTHROUGH));
  }
  final count = 0.obs;
  @override
  void onInit() {
    super.onInit();
    Future<void>.delayed(Duration(seconds: 2), () {
      Get.toNamed(Routes.WALKTHROUGH);
    });
  }
  @override
  void onReady() {
    super.onReady();
    Future<void>.delayed(Duration(seconds: 2), () {
      Get.toNamed(Routes.WALKTHROUGH);
    });

  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
}
