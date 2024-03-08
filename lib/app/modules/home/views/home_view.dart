import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plant_online_store/app/data/models/plant/plant_model.dart';
import 'package:plant_online_store/app/routes/app_pages.dart';
import 'package:plant_online_store/gen/assets.gen.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
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
                  decoration: InputDecoration(
                    prefixIcon: GestureDetector(
                        onTap:() {
                          Get.toNamed(Routes.SEARCH_SCREEN);
                        },
                        child: Assets.iconsLight.search.svg()),
                    suffixIcon: Assets.iconsLight.filter.svg(),
                  ),
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
                Obx(
                  () => Container(
                    height: 320,
                    //color: Colors.blue,
                    child: ListView.separated(
                      itemCount: controller.data.value.data?.length ?? 0,
                      scrollDirection: Axis.horizontal,
                      padding: EdgeInsets.only(left: 5, right: 5),
                      separatorBuilder: (context, index) => SizedBox(
                        width: 5,
                      ),
                      itemBuilder: (context, index) {
                        final item = controller.data.value.data?[index] ?? const Datum();
                        String concatenatedNames = item.otherName?.map((e) => e ?? '').join(', ') ?? '';
                        return Container(
                          //color: Colors.deepOrange,
                          width: 240,
                          height: 250,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              if (item.defaultImage?.originalUrl != null)
                                Image.network(
                                  item.defaultImage?.originalUrl.toString() ?? '',
                                  width: 240,
                                  height: 240,
                                  fit: BoxFit.cover,
                                ),
                              ListTile(
                                title: Text(
                                  item.commonName ?? '',
                                  style: TextStyle(
                                    color: Color(0xff0C9B16),
                                    fontSize: 12.5,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                // subtitle: Text(item.commonName ?? ''),
                                onTap: () {
                                  print(item.id);
                                  //Get.to(DetailPlantView(), arguments:item.id );
                                  // Get.to(()=>DetailPlantView(),arguments: item.id);
                                  Get.toNamed(Routes.DETAIL_PLANT, arguments: item.id);
                                },
                              ),
                              // if (concatenatedNames.isNotEmpty)
                              //   Text(
                              //     concatenatedNames,
                              //     style: TextStyle(
                              //       fontSize: 12.0,
                              //       color: Colors.black,
                              //     ),
                              //   ),
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
                ),
                Obx(
                  () => Container(
                    height: 250,
                    child: GridView.count(
                      crossAxisCount: 2, // Số cột bạn muốn hiển thị
                      children: List.generate(controller.data.value.data?.length ?? 0, (index) {
                        // Tạo các widget cho mỗi phần tử trong danh sách
                        final item = controller.data.value.data?[index] ?? const Datum();
                        return Container(
                          margin: EdgeInsets.all(8),
                          color: Colors.blueGrey[100],
                          child: Center(
                            child: Column(
                              children: [
                                Expanded(
                                  child: Image.network(
                                    item.defaultImage?.originalUrl.toString() ?? '',
                                    width: 50,
                                    height: 50,
                                  ),
                                ),
                                Expanded(
                                  child: Text(
                                    item.commonName.toString(),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
