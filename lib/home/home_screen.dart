import 'package:flutter/material.dart';
import 'package:islamy_app/home/buttom_nav.dart';
import 'package:islamy_app/home/tabs/ahadeth_tab.dart';
import 'package:islamy_app/home/tabs/azkar_tab.dart';
import 'package:islamy_app/home/tabs/quran_tab/quran_tab.dart';
import 'package:islamy_app/home/tabs/radio_tab.dart';
import 'package:islamy_app/home/tabs/sebha_tab.dart';

class HomeScreen extends StatefulWidget {
   HomeScreen({super.key});
  static const String routeName = "Home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
 int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration:  BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/${getBackGroundImage()}",
        ),
        fit: BoxFit.cover
        )
      ),
       child:  Scaffold( 
        backgroundColor: Colors.transparent,
        bottomNavigationBar: ButtomNavBar(onChanged: (index){
        currentIndex = index;
        setState(() {
          
        });
        },),
        body: tabs[currentIndex],
       
             ),
    );
  }
  List<Widget> tabs =[
     QuranTab(),
    const AhadethTab(),
    const SebhaTab(),
    const RadioTab(),
    const AzkarTab()
  ];
  String getBackGroundImage()
  {
    switch (currentIndex) {
      case 0: return "home_pg.png";
      case 1 : return "ahadeth_bg.png";
      case 2 : return "sebha_bg.png";
      case 3 : return "radio_bg.jpg";
       
      default: return "home_pg.png";
    }

  }
 
}