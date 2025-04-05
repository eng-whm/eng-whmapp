import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:quranapp2025/appcolor.dart';
import 'package:quranapp2025/itemhadethname.dart';

class HadethTab extends StatefulWidget {  
  
  @override
  State<HadethTab> createState() => _HadethTabState();
}

class _HadethTabState extends State<HadethTab> {

  List <Hadeth> hadethList = [];

  @override
  Widget build(BuildContext context) {

    if (hadethList.isEmpty){
      loadfileContent();
    }

    return Column(
      children: [
        Image.asset('assets/images/Quran_V2.png'),
        Divider(
          color: AppColor.primaryColor,
          thickness: 3.0,
        ),
        Text('Hadeth Name', style: Theme.of(context).textTheme.bodyMedium,),
        Divider(
          color: AppColor.primaryColor,
          thickness: 3.0,
        ),
        Expanded(
          child:hadethList.isEmpty?
          Center(child: CircularProgressIndicator(color: AppColor.primaryColor,)):
          ListView.separated(
          separatorBuilder: (context, index) {
            return Divider(
              color: AppColor.primaryColor,
              thickness: 3.0,
            );
          },
          itemBuilder: (context, index) {
            return ItemHadethName(hadeth: hadethList[index]);
          },
          itemCount: hadethList.length,
        )
          )
      ],
    );
  }

  void loadfileContent()async{
  String content = await rootBundle.loadString('assets/files/hadeth.txt');
  List <String> contentLines = content.split('#\n'); // Contains all hadeth item by item
  for (int i = 0; i < contentLines.length; i++){
    List <String> linesList = contentLines[i].split('\n');
    String title = linesList[0];
    linesList.removeAt(0);
    Hadeth hadeth = Hadeth(title: title, content: linesList);
    hadethList.add(hadeth);
    setState(() {
    });
  }
}

}

class Hadeth{
  String title;
  List <String> content;
  Hadeth({required this.title, required this.content});
}