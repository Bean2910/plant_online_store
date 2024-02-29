import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:plant_online_store/app/data/models/plant/plant_model.dart';
import 'app/routes/app_pages.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';

import 'network/test_api.dart';


void main() {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);

  runApp(
    GetMaterialApp(
      title: "Application",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      debugShowCheckedModeBanner: false,
    ),
  );
  FlutterNativeSplash.remove();
}

