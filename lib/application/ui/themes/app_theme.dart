import 'package:flutter/material.dart';

abstract class AppTheme {
  static final light = ThemeData(
      fontFamily: 'MarkProbold',
      // primarySwatch: Colors.indigo,
      scaffoldBackgroundColor: Colors.grey[100],
      backgroundColor: Colors.green,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.white,
      )
  );
}

abstract class AppColors {
  static const buttonBarColor = Color.fromRGBO(1, 0, 53, 1);
}

abstract class IconColors {
  static const appColor = Color.fromRGBO(245, 110, 78, 1);
}