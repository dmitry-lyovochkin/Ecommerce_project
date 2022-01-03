import 'package:flutter/material.dart';

abstract class AppTheme {
  static final light = ThemeData(
      fontFamily: 'MarkProbold',
      // primarySwatch: Colors.indigo,
      scaffoldBackgroundColor: Colors.grey[200],
      backgroundColor: Colors.green,
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        selectedItemColor: Colors.white,
        unselectedItemColor: Colors.white,
      ));
}

abstract class AppColors {
  static const buttonBarColor = Color.fromRGBO(1, 0, 53, 1);
}
