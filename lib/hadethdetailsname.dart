import 'package:flutter/material.dart';
import 'package:quranapp2025/hadethtab.dart';
import 'package:quranapp2025/itemhadethcontent.dart';

class HadethDetailsName extends StatefulWidget {

  @override
  State<HadethDetailsName> createState() => _HadethDetailsNameState();
}

class _HadethDetailsNameState extends State<HadethDetailsName> {

  @override
  Widget build(BuildContext context) {

    var args = ModalRoute.of(context)?.settings.arguments as Hadeth;

    return Stack(
      children: [
        Image.asset('assets/images/BigSize_Updated.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,),
        Scaffold(
          appBar: AppBar(
            title: Text(args.title, style: Theme.of(context).textTheme.bodyLarge),
          ),
          body: ListView.builder(itemBuilder: (context, index){
            return ItemHadethContent(content: args.content[index]);
          },
          itemCount: args.content.length,),
        ),
      ],
    );
  }
}