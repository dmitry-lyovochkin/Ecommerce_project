import 'package:flutter/material.dart';

abstract class AppTheme {
  static final light = ThemeData(
    fontFamily: 'MarkProbold',
    // primarySwatch: Colors.indigo,
    scaffoldBackgroundColor: Colors.grey[50],
    backgroundColor: Colors.green,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      selectedItemColor: Colors.green,
      unselectedItemColor: Colors.white,
    ),
    bottomSheetTheme: BottomSheetThemeData(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25.0),
      ),
    ),
  );
}

abstract class AppColors {
  static const buttonBarColor = Color.fromRGBO(1, 0, 53, 1);
}

abstract class IconColors {
  static const appColor = Color.fromRGBO(245, 110, 78, 1);
}

abstract class BorderColor {
  static const appColor = Color.fromRGBO(220, 220, 220, 1);
}
abstract class ContainerColor {
  static const appColor = Color.fromRGBO(40, 40, 67, 1);
}
