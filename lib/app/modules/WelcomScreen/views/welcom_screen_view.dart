import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plant_online_store/app/routes/app_pages.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../gen/assets.gen.dart';
import '../controllers/welcom_screen_controller.dart';

class WelcomScreenView extends GetView<WelcomScreenController> {
  const WelcomScreenView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    Future<void>.delayed(Duration(seconds: 2), () {
      Get.toNamed(Routes.WALKTHROUGH);
    });
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          //color: Colors.amber
          image: DecorationImage(
            image: Assets.images.card1.image().image,
            fit: BoxFit.cover,
            //fit: BoxFit.fill,
          ),
        ),
        child: Column(
          children: [
            const Expanded(
              flex: 2,
              child: SizedBox(),
            ),
            Expanded(
              flex: 3,
              child: Container(
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    colors: [
                      Colors.white.withOpacity(0),
                      Colors.white.withOpacity(1)
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                        alignment: Alignment.centerLeft,
                        margin: const EdgeInsets.symmetric(
                            vertical: 48, horizontal: 32),
                        height: 250,
                        child: Column(
                          children: [
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "Welcome to 👋",
                                style: TextStyle(
                                  color: Color(0xff212121),
                                  fontSize: 47,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: GradientText(
                                "Potea",
                                style: TextStyle(
                                  fontWeight: FontWeight.w900,
                                  fontSize: 80,
                                ),
                                gradientType: GradientType.linear,
                                gradientDirection: GradientDirection.ttb,
                                radius: .4,
                                colors: [
                                  Color(0xff01B763),
                                  Color(0xff14E585),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                "The best plant e-commerce & online store app of the century for your needs!",
                                style: TextStyle(
                                  fontWeight: FontWeight.w500,
                                  fontSize: 18,
                                  color: Color(0xff424242),
                                ),
                              ),
                            ),
                          ],
                        ))),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
