import 'package:flutter/material.dart';
import 'package:quranapp2025/homescreen.dart';
import 'package:quranapp2025/mythemedata.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'home',
      routes: {'home': (context) => Homescreen()},
      theme: MyThemeData.lightmode,
    );
  }
}