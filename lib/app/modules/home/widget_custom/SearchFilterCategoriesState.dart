import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';

class SearchFilterCategories extends StatefulWidget {
  SearchFilterCategories({super.key, required this.categories, required this.selectedCategories});

  final List<String> categories;
  List<String> selectedCategories;
  List<String> _selectedCategoriesBeforeAll = [];

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
          Row(
            children: widget.categories
                .map(
                  (category) => FilterChip(
                    label: Text(category),
                    onSelected: (selected) {
                      setState(
                        () {
                          if (selected && category == "All") {
                            widget.selectedCategories.addAll(widget.categories);
                          } else if (selected) {
                            widget.selectedCategories.add(category);
                          } else {
                            widget.selectedCategories.remove(category);
                            if (category == "All") {
                              widget.selectedCategories = [];
                            }
                          }
                        },
                      );
                      print(widget.selectedCategories);
                    },
                    selected: widget.selectedCategories.contains(category),
                  ),
                )
                .toList(),
          ),
        ],
    );
  }
}
