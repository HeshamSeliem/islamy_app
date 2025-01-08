import 'package:flutter/material.dart';

class ButtomNavBar extends StatefulWidget {
   ButtomNavBar({required this.onChanged, super.key});
   Function onChanged;
  @override
  State<ButtomNavBar> createState() => _ButtomNavBarState();
}

class _ButtomNavBarState extends State<ButtomNavBar> {
    int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
         
         currentIndex: currentIndex,
         onTap: (value) {
           currentIndex = value;
          setState(() {});
           widget.onChanged(currentIndex);
         },
        
       
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

        ],);
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