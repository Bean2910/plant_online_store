import 'package:flutter/material.dart';

import 'package:get/get.dart';
import 'package:plant_online_store/app/data/models/plant/plant_model.dart';

import '../../../../gen/assets.gen.dart';
import '../../home/controllers/home_controller.dart';
import '../controllers/search_screen_controller.dart';

class SearchScreenView extends GetView<SearchScreenController> {
  SearchScreenView({Key? key}) : super(key: key);
  final SearchScreenController searchScreenController = Get.put(SearchScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('SearchScreenView'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            TextFormField(
              onChanged: (value) {
                controller.itemserch.value = value;
              },
              decoration: InputDecoration(
                prefixIcon: GestureDetector(onTap: () {}, child: Assets.iconsLight.search.svg()),
                suffixIcon: Assets.iconsLight.filter.svg(),
              ),
            ),
            Container(
              height: 100,
              child: Obx(
                () => ListView.builder(
                  itemCount: controller.dataList.length,
                  itemBuilder: (context, index) {
                    return ListTile(
                      title: Text(controller.dataList[index]),
                      minVerticalPadding: 0,
                      contentPadding: EdgeInsets.zero,
                      trailing: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          controller.removeText(index);
                        },
                      ),
                    );
                  },
                ),
              ),
            ),
            Row(
              children: [
                Expanded(child: Text('Recent')),
                Expanded(
                  child: TextButton(
                    onPressed: () {},
                    child: Text('Clear all'),
                  ),
                ),
              ],
            ),
            Obx(
              () => controller.check_data == 0
                  ? Column(
                      children: [
                        Container(
                          child: Assets.images.notfound.image(width: 360, height: 200),
                        ),
                        Text(
                          'Not found',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text('Sorry, the keyword you entered cannot be found, please check again or search with another keyword.'),
                      ],
                    )
                  : Obx(
                      () => Container(
                        height: 250,
                        child: GridView.count(
                          crossAxisCount: 2,
                          children: List.generate(controller.data2.value.data?.length ?? 0, (index) {
                            final item = controller.data2.value.data?[index] ?? const Datum();
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
            ),
            Divider(
              // This is the Divider widget
              height: 20,
              // Adjust the height of the line
              thickness: 1,
              // Adjust the thickness of the line
              color: Colors.blue,
              // Adjust the color of the line
              indent: 5,
              // Adjust the left indent of the line
              endIndent: 5, // Adjust the right indent of the line
            ),
          ],
        ),
      ),
    );
  }
}
