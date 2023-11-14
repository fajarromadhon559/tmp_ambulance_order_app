// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

import '../utils/dimension.dart';

class BigText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  TextOverflow overflow;
  FontWeight fontWeight;
  int? maxLines;
  String fontFamily;
  double? letterspacing;

  BigText({
    Key? key,
    this.color,
    required this.text,
    this.fontFamily = '',
    this.fontWeight = FontWeight.normal,
    this.size = 0,
    this.maxLines = 1,
    this.overflow = TextOverflow.ellipsis,
    this.letterspacing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      softWrap: true,
      maxLines: maxLines,
      overflow: maxLines == null ? null : overflow,
      style: TextStyle(
          fontFamily: fontFamily,
          color: color,
          fontSize: size == 0 ? Dimensions.font20 : size,
          fontWeight:
              fontWeight == FontWeight.normal ? FontWeight.w400 : fontWeight,
          letterSpacing: letterspacing),
    );
  }
}
