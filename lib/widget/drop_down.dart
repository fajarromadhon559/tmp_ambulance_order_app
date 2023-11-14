// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimension.dart';

class DropDown extends StatelessWidget {
  String name;
  Object value;
  double? width;
  double? height = 50;
  List<DropdownMenuItem<Object>> items;
  void Function(Object?) onChanged;

  DropDown({
    Key? key,
    required this.name,
    required this.value,
    this.width,
    this.height = 50,
    required this.items,
    required this.onChanged,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: width ?? double.maxFinite,
      height: height,
      padding: const EdgeInsets.symmetric(horizontal: 10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(Dimensions.radius20),
          border: Border.all(color: AppColors.pink, width: 2)),
      child: DropdownButtonHideUnderline(
          child: DropdownButton(
              borderRadius: BorderRadius.circular(Dimensions.radius20),
              value: value,
              icon: const Icon(Icons.keyboard_arrow_down),
              items: items,
              onChanged: onChanged)),
    );
  }
}
