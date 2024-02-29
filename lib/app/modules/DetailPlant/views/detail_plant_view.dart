import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../data/models/detail/plant/detail_plant_model.dart';
import '../controllers/detail_plant_controller.dart';

class DetailPlantView extends GetView<DetailPlantController> {
   DetailPlantView( {Key? key}) : super(key: key);
   final DetailPlantController detailPlantController = Get.put(DetailPlantController());

   @override
  // final DetailPlantModel data;
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: const Text('DetailPlantView'),
        centerTitle: true,
      ),
      body: Center(
        child: Center(
          child: Obx(() => Text(controller.itemId.value.toString())),
        ),
      ),
    );
  }
}
