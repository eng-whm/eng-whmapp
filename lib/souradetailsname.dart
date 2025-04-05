import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quranapp2025/appcolor.dart';
import 'package:quranapp2025/itemsouracontent.dart';

class SouranDetailsName extends StatefulWidget {

  @override
  State<SouranDetailsName> createState() => _SouranDetailsNameState();
}

class _SouranDetailsNameState extends State<SouranDetailsName> {
  List<String>verses = [];

  @override
  Widget build(BuildContext context) {

    var args = ModalRoute.of(context)?.settings.arguments as SouraDetailsArgs;
    if (verses.isEmpty){
      loadFiles(args.index);
    }

    return Stack(
      children: [
        Image.asset('assets/images/BigSize_Updated.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,),
        Scaffold(
          appBar: AppBar(
            title: Text(args.name, style: Theme.of(context).textTheme.bodyLarge,),
          ),
          body: verses.isEmpty?
          Center(
            child: CircularProgressIndicator(
              color: AppColor.primaryColor,
            ),
          ):
          ListView.builder(itemBuilder: (context, index){
            return Itemsouracontent(content: verses[index]);
          },
          itemCount: verses.length,),
          
          ),
      ]
        );
  }

  void loadFiles(int index)async{
    String content = await rootBundle.loadString('assets/files/${index+1}.txt');
    List<String>lines = content.split('\n');
    verses = lines;
    setState(() {
      
    });
  }
}


class SouraDetailsArgs{
  String name;
  int index;
  SouraDetailsArgs({required this.name, required this.index});
}