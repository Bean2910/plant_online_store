import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plant_online_store/app/data/models/plant/plant_model.dart';
import 'package:plant_online_store/app/modules/DetailPlant/views/detail_plant_view.dart';
import 'package:plant_online_store/app/routes/app_pages.dart';
import 'package:plant_online_store/gen/assets.gen.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

import '../../../../network/test_api.dart';
import '../controllers/home_controller.dart';
import 'package:dio/dio.dart';
import 'dart:convert';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.all(24),
          child: Column(
            children: [
              Row(
                children: [
                  Expanded(
                    flex: 1,
                    child: Assets.iconsBold.ellipse.image(width: 48, height: 48),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(
                    flex: 4,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Good Morning 👋'),
                        Text('Andrew Ainsley'),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(flex: 1, child: Assets.iconsLight.notification.svg()),
                  SizedBox(
                    width: 16,
                  ),
                  Expanded(flex: 1, child: Assets.iconsLight.heart.svg()),
                ],
              ),
              SizedBox(
                height: 24,
              ),
              TextFormField(
                decoration: InputDecoration(prefixIcon: Assets.iconsLight.search.svg(), suffixIcon: Assets.iconsLight.filter.svg()),
              ),
              Row(
                children: [
                  Expanded(child: Text('Special Offers')),
                  TextButton(
                    onPressed: () {},
                    child: Text('See all'),
                  ),
                ],
              ),
              Expanded(
                child: Obx(
                      () =>
                      ListView.separated(
                        itemCount: controller.data.value.data?.length ?? 0,
                        padding: EdgeInsets.only(left: 5, right: 5),
                        separatorBuilder: (context, index) =>
                            SizedBox(
                              width: 5,
                            ),
                        itemBuilder: (context, index) {
                          final item = controller.data.value.data?[index] ?? const Datum();
                          String concatenatedNames = item.otherName?.map((e) => e ?? '').join(', ') ?? '';
                          return Container(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                ListTile(
                                  title: Text(
                                    item.commonName ?? '',
                                    style: TextStyle(
                                      color: Color(0xff0C9B16),
                                      fontSize: 12.5,
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  subtitle: Text(item.commonName ?? ''),
                                  onTap: () {
                                    print(item.id);
                                     //Get.to(DetailPlantView(), arguments:item.id );
                                    // Get.to(()=>DetailPlantView(),arguments: item.id);
                                    Get.toNamed(Routes.DETAIL_PLANT,arguments: item.id);
                                  },
                                ),
                                // Expanded(
                                //   child: ListView.builder(
                                //     itemCount: item.otherName?.length,
                                //     itemBuilder: (context, subIndex) {
                                //       final itemOtherName = item.otherName?[subIndex];
                                //       return ListTile(
                                //         title: Text(itemOtherName ?? ''),
                                //       );
                                //     },
                                //   ),
                                // ),
                                if (concatenatedNames.isNotEmpty)
                                  Text(
                                    concatenatedNames,
                                    style: TextStyle(
                                      fontSize: 12.0,
                                      color: Colors.black,
                                    ),
                                  ),
                              ],
                            ),
                          );
                        },
                      ),
                ),
              ),
              Row(
                children: [
                  Expanded(child: Text('Most Popular')),
                  TextButton(
                    onPressed: () {},
                    child: Text('See all'),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
