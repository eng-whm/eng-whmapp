import 'package:flutter/material.dart';
import 'package:quranapp2025/hadethtab.dart';
import 'package:quranapp2025/qurantab.dart';
import 'package:quranapp2025/sebhatab.dart';

class HomeScreen extends StatefulWidget {

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  List <Widget> tabs = [Qurantab(),HadethTab(), SebhaTab()];

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/BigSize_Updated.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,),
        Scaffold(
          appBar: AppBar(
            title: Text('Quran App', style: Theme.of(context).textTheme.bodyLarge,),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              primaryColor: Theme.of(context).primaryColorLight,
            ),
            child: BottomNavigationBar(items: [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/Quran.png')),label: 'Quran'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/Quran.png')),label: 'Hadeth'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/Quran.png')),label: 'Sebha')
            ],
            currentIndex: selectedIndex,
            onTap: (index){
              selectedIndex = index;
              setState(() {
                
              });
            },),
          ),
          body: tabs[selectedIndex],
        ),
      ],
    );
}
}