import 'package:flutter/material.dart';
import 'package:quranapp2025/appcolor.dart';

class SebhaTab extends StatefulWidget {
  
  @override
  State<SebhaTab> createState() => _SebhaTabState();
}

class _SebhaTabState extends State<SebhaTab> {
  int sebhaCounter = 0;
  int index = 0;
  double imageAngle = 0.0;

  List <String> tasbehList = [
    'استغفر الله',
    'لا الله الا الله',
    'سبحان الله'
  ];

  void onTapOnSebha(){
    sebhaCounter++;
    imageAngle+=0.1;
    if (sebhaCounter == 33){
      sebhaCounter = 0;
      index++;
    }
    if(index == tasbehList.length){
      index = 0;
    }
    setState(() {
      
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GestureDetector(
          onTap: onTapOnSebha,
          child: Container(
            margin: EdgeInsets.only(top: 30.0),
            width: MediaQuery.of(context).size.width,
            height: 300.0,
            child: Transform.rotate(
              angle: imageAngle,
              child: Image.asset('assets/images/SebhaBG_V2.png', fit: BoxFit.cover)),
          ),
        ),
        Text('عدد التسبيحات'),
        SizedBox(height: 20.0),
        Container(
          padding: EdgeInsets.all(10.0),
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text('$sebhaCounter', style: TextStyle(color: AppColor.whiteColor)),
        ),
        SizedBox(height: 20.0),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
          decoration: BoxDecoration(
            color: AppColor.primaryColor,
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text(
            tasbehList[index],
            style: TextStyle(color: AppColor.whiteColor),
          ),
        ),
      ],
    );
  }
}
