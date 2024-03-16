import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../routes/app_pages.dart';
import 'package:plant_online_store/app/data/models/plant/plant_model.dart' as home_model;

class ListviewCustom1 extends StatelessWidget {
  const ListviewCustom1({super.key, this.data});

  final data;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 320,
      //color: Colors.blue,
      child: ListView.separated(
        itemCount: data?.length ?? 0,
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: 5, right: 5),
        separatorBuilder: (context, index) => SizedBox(
          width: 5,
        ),
        itemBuilder: (context, index) {
          final item = data?[index] ?? const home_model.Datum();
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
    );
  }
}
