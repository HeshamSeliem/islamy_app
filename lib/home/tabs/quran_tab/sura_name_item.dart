import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/models/sura_model.dart';
import 'package:islamy_app/my_theme_data.dart';

class SuraNameItem extends StatelessWidget {
   SuraNameItem({
    required this.suraModel,super.key});
 SuraModel suraModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                 Image.asset("assets/images/numHolder.png",width: 60,height: 60,),
                 Text("${suraModel.index}",style: GoogleFonts.elMessiri(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),)
        
              ],
            ),
           
            const SizedBox(width: 24,),
             Expanded(
               child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("${suraModel.suraEn}",style: GoogleFonts.elMessiri(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),),
                  Text("${suraModel.numVerses} verses",style: GoogleFonts.elMessiri(
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                    color: Colors.white
                  ),)
                ],
               ),
             ),
            // const SizedBox(width: 80,),
             Text("${suraModel.suraAr}",style: GoogleFonts.elMessiri(
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  color: Colors.white
                ),
                textDirection: TextDirection.ltr,
                ),
          ],
        ),
         Divider(
          thickness: 1,
          endIndent: 20,
          indent: 20,
          color: MyThemeData.primaryColor,
        )
      ],
    );
  }
}