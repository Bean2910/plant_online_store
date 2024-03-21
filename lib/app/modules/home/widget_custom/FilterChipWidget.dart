import 'package:flutter/material.dart';
import 'package:get/get.dart';

class FilterChipWidget extends StatelessWidget {
  final String label;
  final bool isSelected;
  final Function(bool) onChanged;

  FilterChipWidget({required this.label, required this.isSelected, required this.onChanged});

  @override
  Widget build(BuildContext context) {
    return FilterChip(
      label: Text(label),
      selected: isSelected,
      onSelected: onChanged,
    );
  }
}