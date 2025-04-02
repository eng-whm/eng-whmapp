import 'package:flutter/material.dart';
import 'package:quranapp2025/appcolor.dart';

class MyThemeData {
  static final ThemeData lightmode = ThemeData(
    primaryColor: AppColor.primaryLightColro,
    canvasColor: AppColor.primaryLightColro,
    scaffoldBackgroundColor: Colors.transparent,
    bottomNavigationBarTheme: BottomNavigationBarThemeData(backgroundColor: AppColor.primaryLightColro,
    selectedItemColor: AppColor.whiteColro,
    selectedIconTheme: IconThemeData(size: 50.0),
    unselectedItemColor: AppColor.blackColor),
    appBarTheme: AppBarTheme(
      backgroundColor: Colors.transparent,
      elevation: 0.0,
      centerTitle: true,
    ),
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColor.blackColor,
        fontSize: 30.0,
        fontWeight: FontWeight.bold,
      )
    )
  );
}