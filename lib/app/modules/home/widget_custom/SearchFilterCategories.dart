import 'package:flutter/material.dart';
import 'package:plant_online_store/app/modules/home/controllers/home_controller.dart';

class SearchFilterCategories extends StatefulWidget {
  SearchFilterCategories({super.key, required this.categories,  this.selectedCategories});

  final List<String> categories;
  List<String>? selectedCategories = [];

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return SearchFilterCategoriesState();
  }
}

class SearchFilterCategoriesState extends State<SearchFilterCategories> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text('Categories'),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: widget.categories
                .map(
                  (category) => Padding(
                    padding: EdgeInsets.symmetric(horizontal: 4.0),
                    child: FilterChip(
                      label: Text(category),
                      onSelected: (selected) {
                        //print(widget.selectedCategories);
                        //print(widget.selectedCategories);
                        setState(
                          () {
                            //print(selected);
                            print('0');
                            if (selected && category == "All") {
                              widget.selectedCategories?.addAll(widget.categories);
                              print('1');
                            } else if (selected) {
                              print('2');
                              widget.selectedCategories?.add(category);
                            } else if (!selected && category == "All") {
                              //print(selected);
                              widget.selectedCategories = [];
                              print(widget.selectedCategories);
                            } else if (!selected && category != "All") {
                              widget.selectedCategories?.remove(category);
                              print('3');
                            } print(widget.selectedCategories?.contains(category));
                          },
                        );
                      },
                      selected: widget.selectedCategories!.contains(category),
                    ),
                  ),
                )
                .toList(),
          ),
        ),
      ],
    );
  }
}
