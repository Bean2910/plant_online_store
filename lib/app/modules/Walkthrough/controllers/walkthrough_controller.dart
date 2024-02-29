import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../../../../gen/assets.gen.dart';
import '../../../routes/app_pages.dart';
import '../models/walkthrought_info.dart';

class WalkthroughController extends GetxController {
  //TODO: Implement WalkthroughController
  var SelectedPageIndex = 0.obs;
  var pageController = PageController();
  var currentIndex=0;
  bool get isLastPage => SelectedPageIndex.value == walkthroughPages.length - 1;
  final count = 0.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  void increment() => count.value++;
  List<WalkthroughInfo> walkthroughPages = [
    WalkthroughInfo(Assets.images.card7.image(),
        'We provide high quality plants just for you', ''),
    WalkthroughInfo(Assets.images.card9.image(),
        'Your satisfaction is our number one priority', ''),
    WalkthroughInfo(Assets.images.card4.image(),
        'Let' 's Shop Your Favorite Plants with Potea Now!', ''),
  ];

  forwardAction() {
    if (isLastPage) {
      Get.toNamed(Routes.LETS_YOU_IN);} else {
      pageController.nextPage(duration: 300.milliseconds, curve: Curves.ease);
    }
  }
}
