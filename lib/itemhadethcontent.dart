import 'package:flutter/material.dart';
import 'package:quranapp2025/appcolor.dart';
import 'package:quranapp2025/hadethtab.dart';

class ItemHadethContent extends StatelessWidget {
  String content;
  ItemHadethContent({required this.content});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 50.0),
      child:
        Text(content, style: Theme.of(context).textTheme.titleLarge,textAlign: TextAlign.center,)
    );
  }
}