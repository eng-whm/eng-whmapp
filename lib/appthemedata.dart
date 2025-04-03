import 'package:flutter/material.dart';
import 'package:quranapp2025/appcolor.dart';

class AppThemeData{
  static final ThemeData lightmode = ThemeData(
    primaryColor: AppColor.primaryColor,
    canvasColor: AppColor.primaryColor,
    scaffoldBackgroundColor: Colors.transparent,
    appBarTheme: AppBarTheme(backgroundColor: Colors.transparent, elevation: 0.0, centerTitle: true,iconTheme: IconThemeData(color: AppColor.blackColor)),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColor.blackColor,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      ),
      bodyMedium: TextStyle(
        color: AppColor.blackColor,
        fontSize: 25.0,
        fontWeight: FontWeight.w700,
      ),
      bodySmall: TextStyle(
        color: AppColor.blackColor,
        fontSize: 20.0,
        fontWeight: FontWeight.w700,
      ),
      titleLarge: TextStyle(
        color: AppColor.blackColor,
        fontSize: 25.0,
        fontWeight: FontWeight.normal,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: AppColor.primaryColor,
      selectedItemColor: AppColor.whiteColor,
      selectedIconTheme: IconThemeData(size: 60.0),
      unselectedItemColor: AppColor.blackColor,
      ),
  );
}