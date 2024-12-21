import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AzkarTab extends StatelessWidget {
  const AzkarTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text("Azkar  tab tab tab Tab" , style: GoogleFonts.elMessiri(
            fontSize: 24,
            color: Colors.blueGrey
          ),)
        ],
      ),
    );
  }
}