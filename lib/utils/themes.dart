import 'package:flutter/material.dart';
import 'colors.dart';

class MyTheme {
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primaryColor: AppColors.orange,
      scaffoldBackgroundColor: AppColors.white,
      colorScheme: const ColorScheme.light());
}
