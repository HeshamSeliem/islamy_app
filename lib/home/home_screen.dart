import 'package:flutter/material.dart';
import 'package:islamy_app/home/tabs/ahadeth_tab.dart';
import 'package:islamy_app/home/tabs/azkar_tab.dart';
import 'package:islamy_app/home/tabs/quran_tab.dart';
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
      width: 200,
      decoration:  BoxDecoration(
        image: DecorationImage(image: AssetImage("assets/images/${getBackGroundImage()}",
        ),
        fit: BoxFit.cover
        )
      ),
       child:  Scaffold(
        backgroundColor: Colors.transparent,
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: true,
          showUnselectedLabels: false,
          backgroundColor:const Color(0xffE2BE7F),
          selectedItemColor:  Colors.white,
         currentIndex: currentIndex,
         onTap: (value) {
           currentIndex = value;
           setState(() {
             
           });
         },
         type: BottomNavigationBarType.fixed,
       
          items: [
        BottomNavigationBarItem(
          icon: _buildNavIcon("quran", 0),
          label: "Quran" ),
           BottomNavigationBarItem(
          icon: _buildNavIcon("ahadeth", 1),
          label: "Ahadeth" ),
           BottomNavigationBarItem(
          icon: _buildNavIcon("sebha", 2),
          label: "Sabeh" ),
           BottomNavigationBarItem(
          icon: _buildNavIcon("radio", 3),
          label: "Radio" ),
            BottomNavigationBarItem(
          icon: _buildNavIcon("azkar", 4),
          label: "Azkar" ),

        ],),
        body: tabs[currentIndex],

      ),
    );
  }
  List<Widget> tabs =[
    QuranTab(),
    AhadethTab(),
    SebhaTab(),
    RadioTab(),
    AzkarTab()
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
  Widget _buildNavIcon(String imageName, int index)
  {
    return (currentIndex == index)? Container(
          padding: const EdgeInsets.symmetric(vertical: 6 ,horizontal: 20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(60),
            color: const Color(0x99202020),
          ),
          child: ImageIcon(AssetImage("assets/images/$imageName.png"))
          ):ImageIcon(AssetImage("assets/images/$imageName.png"))
          ;
  }
}