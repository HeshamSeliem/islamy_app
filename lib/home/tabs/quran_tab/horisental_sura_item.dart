import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/models/sura_model.dart';

class HorisentalSuraItem extends StatelessWidget {
   HorisentalSuraItem({required this.model, super.key});
  SuraModel model;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Color(0xffE2BE7F),
      ),
      width: 280,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 7,top: 12),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("${model.suraEn}",style: GoogleFonts.elMessiri(
                 fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff202020)
                ),),
                Text("${model.suraAr}",style: GoogleFonts.elMessiri(
                 fontSize: 24,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff202020)
                ),),
                Text("${model.numVerses} Verses",style: GoogleFonts.elMessiri(
                 fontSize: 14,
                  fontWeight: FontWeight.w700,
                  color: Color(0xff202020)
                ),)
            
              ],
            ),
          ),
          Image.asset("assets/images/sura_item.png")

        ],
      )
      
    );
  }
}