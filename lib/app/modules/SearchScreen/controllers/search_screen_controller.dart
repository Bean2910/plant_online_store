import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:rxdart/rxdart.dart';

import '../../../data/models/plant/plant_model.dart';

class SearchScreenController extends GetxController {
  //TODO: Implement SearchScreenController

  final count = 0.obs;
  final data2 = const PlantModel().obs;
  var itemserch = ''.obs;
  var item_value = ''.obs;
  var dataList = [].obs;
  @override
  void onInit() {
    super.onInit();
    print(itemserch);
    // searchdata();
    GetStorage box = GetStorage();
    if (box.hasData('textList')) {
      dataList = (box.read<List>('textList') ?? []).obs;
    }
  }


  @override
  void onReady() {
    super.onReady();
    itemserch.stream.debounce((_) => TimerStream(true, const Duration(milliseconds: 800))).listen((event) {
      addText(itemserch.toString());
      //searchdata();
    });

  }

  @override
  void onClose() {
    super.onClose();
    itemserch.close();
  }

  void increment() => count.value++;

  void searchdata() async {
    try {
      final dio = Dio();
      final response = await dio.get("https://perenual.com/api/species-list?key=sk-91Qm65d6ffdc6ba704310&q=$itemserch");
      final json = response.data as Map<String, dynamic>;
      data2.value = PlantModel.fromJson(json);
    } catch (e) {
      print('Error occurred: $e');
    }
  }

  void addText(String text) {
    dataList.add(text);
    update();
    saveTextList();
  }

  void removeText(int index) {
    dataList.removeAt(index);
    update();
    saveTextList();
  }

  void saveTextList() {
    GetStorage box = GetStorage();
    box.write('textList', dataList.toList());
  }
}
