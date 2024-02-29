import 'dart:convert';

import 'package:dio/dio.dart';

import '../app/data/models/plant/plant_model.dart';

final dio = Dio();
String url_api_request = 'https://perenual.com/api/species-list?key=sk-91Qm65d6ffdc6ba704310';
void getdata2() async {
  try {
    final response = await dio.get(url_api_request);
    final json = response.data as Map<String, dynamic>;
    print(json);
    final model_1 = PlantModel.fromJson(json);
    print(model_1);
    // final model_2 =Datum.fromJson( as Map<String, dynamic>);
    // print(model_2);
  } catch (e) {
    print('Error occurred: $e');
  }
}