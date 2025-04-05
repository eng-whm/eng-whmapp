import 'package:flutter/material.dart';
import 'package:quranapp2025/hadethtab.dart';

class ItemHadethName extends StatelessWidget {

  Hadeth hadeth;
  ItemHadethName({required this.hadeth});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.of(context).pushNamed('hadethdetails',
        arguments: hadeth);
      },
      child: Text(
        hadeth.title,
        style: Theme.of(context).textTheme.bodySmall,
        textAlign: TextAlign.center,
      ),
    );
  }
}