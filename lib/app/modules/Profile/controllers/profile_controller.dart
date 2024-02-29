import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:plant_online_store/app/modules/Profile/models/profile_model.dart';

import '../../../../gen/assets.gen.dart';

class ProfileController extends GetxController {
  //TODO: Implement ProfileController
  var selectedDrowpdown = 'M';
  List dropdownText = ['M', 'F', ':)'];
  final selectedGender = "".obs;
  final selectedPhone = "".obs;
  String initialValueDialPhone = '';

  final count = 0.obs;

  final phoneNumberController = TextEditingController();

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

  void setSelectedGender(String value) {
    selectedGender.value = value;
  }

  void setSelectedPhone(String value) {
    selectedPhone.value = value;
  }

  void increment() => count.value++;
  List<ProfileInfo> profileFlags = [
    ProfileInfo(
      Assets.flags.vietnam.image(),
      '+84',
    ),
    ProfileInfo(
      Assets.flags.usa.image(),
      '+1',
    ),
    ProfileInfo(
      Assets.flags.china.image(),
      '+2',
    ),
  ];
}
