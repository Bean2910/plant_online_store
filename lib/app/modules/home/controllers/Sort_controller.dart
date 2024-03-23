import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import 'package:plant_online_store/app/data/models/plant/plant_model.dart';
import 'package:plant_online_store/app/modules/home/controllers/home_controller.dart';

final class Sort_controller extends HomeController {
  //TODO: Implement HomeController

  List <String> sort=['Popular','Most Recent','Price High','Chip'];
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
        selectedFilters.addAll(sort);
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
      bool allOptionsSelected = sort.sublist(1).every((option) => selectedFilters.contains(option));

      // Update selection based on allOptionsSelected
      if (allOptionsSelected) {
        selectedFilters.add('All');
      } else {
        selectedFilters.remove('All');
      }
    }
  }

}