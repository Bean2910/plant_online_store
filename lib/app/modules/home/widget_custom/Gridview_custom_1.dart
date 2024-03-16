import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../data/models/plant/plant_model.dart';

class GridviewCustom1 extends StatelessWidget{
  final data;

  GridviewCustom1({super.key, this.data});
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      child: GridView.count(
        crossAxisCount: 2, // Số cột bạn muốn hiển thị
        children: List.generate(data?.length ?? 0, (index) {
          final item = data?[index] ?? const Datum();
          return Container(
            margin: const EdgeInsets.all(8),
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
    );
  }

}