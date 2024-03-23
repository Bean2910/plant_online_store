import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

import 'package:plant_online_store/app/modules/home/widget_custom/Gridview_custom_1.dart';
import 'package:plant_online_store/app/routes/app_pages.dart';
import 'package:plant_online_store/gen/assets.gen.dart';

import '../controllers/Categories_controller.dart';
import '../controllers/Rating_controller.dart';
import '../controllers/Sort_controller.dart';
import '../controllers/home_controller.dart';
import '../widget_custom/Listview_custom_1.dart';
import '../widget_custom/FilterChipWidget.dart';
import '../widget_custom/Slider_Custom_1.dart';

class HomeView extends GetView<HomeController> {
  HomeView({super.key});
  final Categories_controller categories_controller = Get.put(Categories_controller());
  final Rating_controller rating_controller = Get.put(Rating_controller());
  final Sort_controller sort_controller = Get.put(Sort_controller());


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
                            width: 450,
                            height: 350,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(20),
                              color: Colors.white,
                            ),
                            padding: EdgeInsets.all(20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Filter Options',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                Obx(
                                  () => SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: categories_controller.categories.map((option) {
                                        return Padding(
                                          padding: EdgeInsets.only(right: 8.0),
                                          child: FilterChipWidget(
                                            label: option,
                                            isSelected: categories_controller.selectedFilters.contains(option),
                                            onChanged: (isSelected) {
                                              categories_controller.toggleFilter(option);
                                            },
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Price Range',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                SliderCustom1(
                                  controller: controller,
                                ),
                                Text(
                                  'Sort by',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                Obx(
                                      () => SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: sort_controller.sort.map((option) {
                                        return Padding(
                                          padding: EdgeInsets.only(right: 8.0),
                                          child: FilterChipWidget(
                                            label: option,
                                            isSelected: sort_controller.selectedFilters.contains(option),
                                            onChanged: (isSelected) {
                                              sort_controller.toggleFilter(option);
                                            },
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                                Text(
                                  'Rating',
                                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                                ),
                                Obx(
                                      () => SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      children: rating_controller.rating.map((option) {
                                        return Padding(
                                          padding: EdgeInsets.only(right: 8.0),
                                          child: FilterChipWidget(
                                            label: option,
                                            isSelected: rating_controller.selectedFilters.contains(option),
                                            onChanged: (isSelected) {
                                              rating_controller.toggleFilter(option);
                                            },
                                          ),
                                        );
                                      }).toList(),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );

                        // showModalBottomSheet(
                        //   context: context,
                        //   builder: (_) {
                        //     return Container(
                        //       width: 450,
                        //       height: 350,
                        //       decoration: BoxDecoration(
                        //         borderRadius: BorderRadius.circular(20),
                        //         color: Colors.white,
                        //       ),
                        //       child: Column(
                        //         children: [
                        //           GetX<HomeController>(
                        //             init: controller,
                        //             builder: (HomeController controller) {
                        //               return SearchFilterCategories(
                        //                 categories: controller.categories,
                        //                 selectedCategories: controller.selectedCategories,
                        //                 onSelected2: (selected, category) {},
                        //               );
                        //             },
                        //           ),
                        //           // SearchFilterCategories(
                        //           //   categories: controller.categories,
                        //           //   selectedCategories: controller.selectedCategories,
                        //           //   onSelected2: (selected, category) {},
                        //           // ),
                        //           // SliderCustom1(
                        //           //   controller: controller,
                        //           // ),
                        //         ],
                        //       ),
                        //     );
                        //   },
                        // );
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
                Obx(() => GridviewCustom1(
                      data: controller.data.value.data,
                    )),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
