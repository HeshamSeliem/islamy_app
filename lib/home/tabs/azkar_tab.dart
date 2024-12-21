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
          Text("Azkar first commit tani mara yalla  Tab" , style: GoogleFonts.elMessiri(
            fontSize: 24,
            color: Colors.blueGrey
          ),)
        ],
      ),
    );
  }
}