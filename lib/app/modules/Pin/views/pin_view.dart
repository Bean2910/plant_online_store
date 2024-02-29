import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../../widget/Pin.dart';
import '../controllers/pin_controller.dart';
import 'package:pinput/pinput.dart';

class PinView extends GetView<PinController> {
  const PinView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create New PIN'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            children: [
              SizedBox(
                height: 116,
              ),
              Text('Add a PIN number to make your account more secure.'),
              SizedBox(height: 80),
              Pin(),
              SizedBox(
                height: 116,
              ),
              Container(
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
