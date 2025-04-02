import 'package:flutter/material.dart';
import 'package:quranapp2025/hadethtab.dart';
import 'package:quranapp2025/qurantab.dart';
import 'package:quranapp2025/sebhatab.dart';

class Homescreen extends StatefulWidget {
  const Homescreen({super.key});

  @override
  State<Homescreen> createState() => _HomescreenState();
}

class _HomescreenState extends State<Homescreen> {

  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset('assets/images/BigSize_Updated.png',
        width: double.infinity,
        height: double.infinity,
        fit: BoxFit.fill,
        ),
        Scaffold(
          appBar: AppBar(
            title: Text('Quran App',style: Theme.of(context).textTheme.bodyLarge),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              canvasColor: Theme.of(context).primaryColorLight
            ),
            child: BottomNavigationBar(items: 
            [
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/Quran.png'),),label: 'Quran'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/Hadeth.png'),),label: 'Hadeth'),
              BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/Sebha.png'),),label: 'Sebha')
            ],
            currentIndex: selectedIndex,
            onTap: (index){
              selectedIndex = index;
              setState(() {
                
              });
            },
            ),
          ),
          body: tabs[selectedIndex],
        )
      ],
    );
  }
      List <Widget> tabs = [
      QuranTab(),
      HadethTab(),
      SebhaTab(),
    ];
}