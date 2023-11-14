// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utils/colors.dart';
import '../utils/dimension.dart';

class FieldText extends StatelessWidget {
  final Widget fieldText;
  double fieldTextHeight;
  double fieldTextWidht;
  double radius;
  Color? borderColor;

  FieldText({
    Key? key,
    required this.fieldText,
    this.fieldTextHeight = 0,
    this.fieldTextWidht = 0,
    this.radius = 0,
    this.borderColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: fieldTextWidht == 0 ? Dimensions.text_field_width : fieldTextWidht,
      height: fieldTextHeight == 0
          ? Dimensions.text_field_height50
          : fieldTextHeight,
      decoration: BoxDecoration(
        borderRadius:
            BorderRadius.all(Radius.circular(radius == 0 ? 10 : radius)),
        border: Border.all(
            color: borderColor == null ? AppColors.pink : borderColor!,
            width: 2),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: fieldText,
      ),
    );
  }
}
