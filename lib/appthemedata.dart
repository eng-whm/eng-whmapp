import 'package:flutter/material.dart';
import 'package:quranapp2025/appcolor.dart';

class AppThemeData{
  static final ThemeData lightmode = ThemeData(
    primaryColor: AppColor.primaryColor,
    canvasColor: AppColor.primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(color: Colors.transparent, elevation: 0.0, centerTitle: true),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColor.blackColor,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      )
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColor.primaryColor,
      selectedItemColor: AppColor.whiteColor,
      selectedIconTheme: IconThemeData(size: 60.0),
      unselectedItemColor: AppColor.blackColor,
      ),
  );
}