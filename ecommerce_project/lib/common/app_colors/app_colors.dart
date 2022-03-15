import 'package:flutter/material.dart';

class AppColors {
  static const buttonBarColor = Color.fromRGBO(1, 0, 53, 1);
  static const iconColor = Color.fromRGBO(245, 110, 78, 1);
  static const borderColor = Color.fromRGBO(220, 220, 220, 1);
  static const containerColor = Color.fromRGBO(40, 40, 67, 1);
}

  Color colorFromApi(String hexColor) {
    final hexCode = hexColor.replaceAll('#', '');
    return Color(int.parse('FF$hexCode', radix: 16));
  }

