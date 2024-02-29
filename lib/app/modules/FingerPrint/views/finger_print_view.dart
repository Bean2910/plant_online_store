import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../gen/assets.gen.dart';
import '../../../routes/app_pages.dart';
import '../controllers/finger_print_controller.dart';

class FingerPrintView extends GetView<FingerPrintController> {
  const FingerPrintView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('FingerPrintView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            children: [
              SizedBox(
                height: 116,
              ),
              Text('Add a fingerprint to make your account more secure.'),
              Container(
                
                  width: 200,
                  height: 200,
                  child: Assets.images.finger.svg()

              ),
              Container(
                padding: EdgeInsets.symmetric(vertical: 76),
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    Get.toNamed(Routes.FINGER_PRINT);
                  },
                  child: Text('Continue'),
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xff01B763),
                    foregroundColor: Colors.white,
                    textStyle: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                    elevation: 10,
                    shadowColor: Color(0xff01B763),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
