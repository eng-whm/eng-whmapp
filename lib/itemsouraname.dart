import 'package:flutter/material.dart';
import 'package:quranapp2025/souradetailsname.dart';

class ItemSouraName extends StatelessWidget {
  String name;
  int index;
  ItemSouraName ({required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed('souradetails',
        arguments: SouraDetailsArgs(name: name, index: index)
        );
      },
      child: Text(name,style: Theme.of(context).textTheme.bodySmall,textAlign: TextAlign.center,));
  }
}