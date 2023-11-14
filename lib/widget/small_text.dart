// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  Color? color;
  final String text;
  double size;
  double height;
  FontWeight fontWeight;

  SmallText({
    Key? key,
    this.color,
    required this.text,
    this.fontWeight = FontWeight.normal,
    this.height = 1.2,
    this.size = 12,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          color: color,
          fontSize: size,
          height: height,
          fontWeight:
              fontWeight == FontWeight.normal ? FontWeight.normal : fontWeight),
    );
  }
}
