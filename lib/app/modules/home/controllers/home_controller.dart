import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:plant_online_store/app/data/models/plant/plant_model.dart';

class HomeController extends GetxController {
  //TODO: Implement HomeController

  final count = 0.obs;
  final data = const PlantModel().obs;
  List <String> categories=['All','Cactus','Sansevieria','Palm','Sansevieria2','Palm2'];
  var selectedFilters = <String>[].obs;
  var allSelected = false.obs;
  void toggleFilter(String filter) {
    // if (filter == 'All') {
    //   if (allSelected.value) {
    //     selectedFilters.clear();
    //     allSelected.value = false;
    //   } else {
    //     selectedFilters.clear();
    //     selectedFilters.addAll(categories);
    //     allSelected.value = true;
    //   }
    // } else {
    //   if (selectedFilters.contains('All')) {
    //     selectedFilters.remove('All');
    //     allSelected.value = false;
    //   }
    //
    //   if (selectedFilters.contains(filter)) {
    //     selectedFilters.remove(filter);
    //   } else {
    //     selectedFilters.add(filter);
    //   }
    // }
    if (filter == 'All') {
      if (selectedFilters.contains('All')) {
        selectedFilters.clear();
      } else {
        selectedFilters.addAll(categories);
      }
    } else {
      if (selectedFilters.contains('All')) {
        selectedFilters.remove('All');
      }
      if (selectedFilters.contains(filter)) {
        selectedFilters.remove(filter);
      } else {
        selectedFilters.add(filter);
      }
      bool allOptionsSelected = categories.sublist(1).every((option) => selectedFilters.contains(option));

      // Update selection based on allOptionsSelected
      if (allOptionsSelected) {
        selectedFilters.add('All');
      } else {
        selectedFilters.remove('All');
      }
    }
  }
  @override
  void onInit() {
    super.onInit();
    getdata();
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

  void getdata() async {
    try {
      final dio = Dio();
      final response = await dio.get("https://perenual.com/api/species-list?key=sk-91Qm65d6ffdc6ba704310");
      final json = response.data as Map<String, dynamic>;

      data.value = PlantModel.fromJson(json);
    } catch (e) {
      print('Error occurred: $e');
    }
  }
  RxDouble sliderValue = 0.0.obs;

  void updateSliderValue(double value) {
    sliderValue.value = value;
  }
  final RxDouble rxLowerValue = 0.0.obs;
  final RxDouble rxUpperValue = 50.0.obs;

  void updateRangeValues(double lowerValue, double upperValue) {
    rxLowerValue.value = lowerValue;
    rxUpperValue.value = upperValue;
    update();
  }
}
