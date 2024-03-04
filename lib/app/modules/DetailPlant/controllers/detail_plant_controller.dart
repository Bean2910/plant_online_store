import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:plant_online_store/app/data/models/detail/plant/detail_plant_model.dart';

class DetailPlantController extends GetxController {
  //TODO: Implement DetailPlantController1

  final data =  DetailPlantModel().obs;
  final count = 0.obs;
  var itemId = ''.obs;
  @override
  void onInit() {
    super.onInit();
    // itemId=Get.arguments;
    // var args = Get.arguments;
    // if (args != null) {
    //   itemId.value = args;
    //   print('ok');
    // }
    // print('ABC $itemId');
    itemId.value = Get.arguments.toString();
    print(itemId);
    //getdatadetail();
    getdatadetail();
  }

  @override
  void onReady() {
    super.onReady();
    //getdatadetail();
  }

  @override
  void onClose() {
    super.onClose();
  }


  void increment() => count.value++;
  void getdatadetail() async {
    try {
      final dio = Dio();

      final response = await dio.get("https://perenual.com/api/species/details/$itemId?key=sk-91Qm65d6ffdc6ba704310");
      final json = response.data as Map<String, dynamic>;
      print(json);
      data.value = DetailPlantModel.fromJson(json);
    } catch (e) {
      print('Error occurred: $e');
    }
  }
}
