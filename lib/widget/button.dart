// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:tmp_ambulance_order_app/widget/small_text.dart';
import '../utils/dimension.dart';
import '../utils/colors.dart';

class Button extends StatelessWidget {
  final VoidCallback on_pressed;
  final String text;
  double? width;
  double? height;
  double? radius;
  Color? color;
  double? textSize;
  Color? textColor;
  BoxBorder? boxBorder;
  EdgeInsetsGeometry? margin;

  Button({
    Key? key,
    required this.on_pressed,
    required this.text,
    this.width,
    this.height,
    this.radius,
    this.color,
    this.textSize,
    this.textColor,
    this.boxBorder,
    this.margin,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: on_pressed,
      child: Container(
        width: width == 0 ? Dimensions.screenWidth * 0.6 : width,
        height: height == 0 ? Dimensions.screenWidth * 0.15 : height,
        margin: margin,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(radius!.toDouble())),
            border: boxBorder,
            color: color),
        child: Center(
            child: SmallText(
          text: text,
          size: textSize == 0 ? Dimensions.font20 : textSize!,
          color: color,
          fontWeight: FontWeight.bold,
        )),
      ),
    );
  }
}
