import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plant_online_store/app/modules/home/widget_custom/Gridview_custom_1.dart';
import 'package:plant_online_store/app/routes/app_pages.dart';
import 'package:plant_online_store/gen/assets.gen.dart';

import '../controllers/home_controller.dart';
import '../widget_custom/Listview_custom_1.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Container(
            margin: const EdgeInsets.all(24),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Assets.iconsBold.ellipse.image(width: 48, height: 48),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    const Expanded(
                      flex: 4,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Good Morning 👋'),
                          Text('Andrew Ainsley'),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(flex: 1, child: Assets.iconsLight.notification.svg()),
                    const SizedBox(
                      width: 16,
                    ),
                    Expanded(flex: 1, child: Assets.iconsLight.heart.svg()),
                  ],
                ),
                const SizedBox(
                  height: 24,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: GestureDetector(
                        onTap: () {
                          Get.toNamed(Routes.SEARCH_SCREEN);
                        },
                        child: Assets.iconsLight.search.svg()),
                    suffixIcon: GestureDetector(
                      onTap: () {
                        Get.bottomSheet(
                            Container(
                              width: 350,
                              height: 350,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(20),
                                color: Colors.greenAccent,
                              ),
                              child: Column(
                                children: [
                                  Obx(
                                    () => Slider(
                                      min: 0,
                                      max: 100,
                                      value: controller.sliderValue.value,
                                      onChanged: (value) {
                                        controller.updateSliderValue(value);
                                      },
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            //barrierColor: Colors.transparent, // Đặt màu barrier trong zs
                            elevation: 0);
                      },
                      child: Assets.iconsLight.filter.svg(),
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Expanded(child: Text('Special Offers')),
                    TextButton(
                      onPressed: () {},
                      child: const Text('See all'),
                    ),
                  ],
                ),
                Obx(
                  () => ListviewCustom1(
                    data: controller.data.value.data,
                  ),
                ),
                Row(
                  children: [
                    const Expanded(child: Text('Most Popular')),
                    TextButton(
                      onPressed: () {},
                      child: const Text('See all'),
                    ),
                  ],
                ),
                Obx(
                  () => GridviewCustom1(data:controller.data.value.data ,)
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
