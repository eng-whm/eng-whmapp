import 'package:flutter/material.dart';
import 'package:quranapp2025/souradetailsname.dart';

class ItemSouraName extends StatelessWidget {
  final String name;
  final int index;
  const ItemSouraName({super.key, required this.name, required this.index});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed('souradetails',
        arguments: SouraDetailsArgs(name: name, index: index)
        );
      },
      child: Text(name,
      style: Theme.of(context).textTheme.bodySmall,
      textAlign: TextAlign.center,),
    );
  }
}