import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../../gen/assets.gen.dart';
import '../../../routes/app_pages.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Fill Your Profile'),
      ),
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            children: [
              Stack(
                children: [
                  Assets.iconsBold.ellipse.image(width: 140, height: 140),
                  Positioned(
                    bottom: 0,
                    right: 0,
                    child: Assets.iconsBold.editSquare.svg(width: 35, height: 35, colorFilter: ColorFilter.mode((Color(0xff01B763)), BlendMode.srcIn)),
                  ),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 56,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF5F5F5),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 56,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF5F5F5),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 56,
                child: TextFormField(
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Color(0xffF5F5F5),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    suffixIcon: Center(
                      widthFactor: 3.0,
                      child: Assets.iconsLight.calendar.svg(width: 20, height: 20),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              Container(
                height: 56,
                child: TextFormField(
                  decoration: InputDecoration(
                    hintText: 'ABC',
                    filled: true,
                    fillColor: Color(0xffF5F5F5),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        width: 0,
                        style: BorderStyle.none,
                      ),
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    suffixIcon: Center(
                      widthFactor: 3.0,
                      child: Assets.iconsLight.message.svg(width: 20, height: 20),
                    ),
                    //suffixIcon: Assets.iconsBold.message.svg(width: 20,height: 20)
                    //Assets.iconsBold.message.svg(width: 10,height: 10),
                  ),
                ),
              ),
              SizedBox(
                height: 24,
              ),
              // Container(
              //   height: 56,
              //   child: TextFormField(
              //     decoration: InputDecoration(
              //       filled: true,
              //       fillColor: Color(0xffF5F5F5),
              //       border: OutlineInputBorder(
              //         borderSide: BorderSide(
              //           width: 0,
              //           style: BorderStyle.none,
              //         ),
              //         borderRadius: BorderRadius.circular(10.0),
              //       ),
              //     ),
              //   ),
              // ),
              // SizedBox(
              //   height: 24,
              // ),
              Obx(
                () {
                  return Container(
                    child: Row(
                      children: [
                        Expanded(
                          child: DropdownButton(
                            hint: Text(
                              'Phone Number',
                            ),
                            onChanged: (newValue) {
                              controller.setSelectedPhone(newValue.toString());
                              controller.update();
                              //print(newValue.toString());
                              controller.phoneNumberController.text = newValue.toString();
                              // _controller.initialValueDialPhone = newValue.toString();
                              // print(_controller.initialValueDialPhone);
                            },
                            value: controller.selectedPhone.value == "" ? null : controller.selectedPhone.value,
                            items: [
                              for (var data in controller.profileFlags)
                                DropdownMenuItem(
                                  child: Row(
                                    children: [
                                      data.imageAsset,
                                      Text('\t' + data.code),
                                    ],
                                  ),
                                  value: data.code,
                                )
                            ],
                          ),
                        ),
                        Expanded(
                            child: TextFormField(
                          controller: controller.phoneNumberController,
                        ))
                      ],
                    ),
                  );
                },
              ),
              Obx(
                () {
                  return Container(
                    child: DropdownButton(
                      hint: Text(
                        'Gender',
                      ),
                      onChanged: (newValue) {
                        controller.selectedGender(newValue.toString());
                        controller.update();
                        print(newValue.toString());
                      },
                      value: controller.selectedGender.value == "" ? null : controller.selectedGender.value,
                      items: [
                        for (var data in controller.dropdownText)
                          DropdownMenuItem(
                            child: new Text(
                              data,
                            ),
                            value: data,
                          )
                      ],
                    ),
                  );
                },
              ),
              // ),
              Container(
                height: 60,
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {Get.toNamed(Routes.PIN);},
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
