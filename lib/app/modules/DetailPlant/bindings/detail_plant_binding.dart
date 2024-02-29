import 'package:get/get.dart';

import '../controllers/detail_plant_controller.dart';

class DetailPlantBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailPlantController>(
      () => DetailPlantController(),
    );
  }
}
