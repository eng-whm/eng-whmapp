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

  int selectedIndedx = 0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          'assets/images/BigSize_Updated.png',
          width: double.infinity,
          height: double.infinity,
          fit: BoxFit.fill,
          ),
        Scaffold(
          appBar: AppBar(
            title: Text('Quran App 2025', style: Theme.of(context).textTheme.bodyLarge),
          ),
          bottomNavigationBar: Theme(
            data: Theme.of(context).copyWith(
              primaryColor: Theme.of(context).primaryColorLight,
            ),
            child: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/Quran.png'),), label: 'Quran'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/Sebha.png'),), label: 'Sebha'),
                BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/Hadeth.png'),), label: 'Hadeth'),
              ],
              currentIndex: selectedIndedx,
              onTap: (index) {
                selectedIndedx = index;
                setState(() {});
              },
            ),
          ),
          body: tabs[selectedIndedx],
        )
      ],
    );
  }

  List <Widget> tabs = [
    QuranTab(),
    SebhaTab(),
    HadethTab(),
  ];
  
}