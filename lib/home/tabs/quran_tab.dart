import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class QuranTab extends StatelessWidget {
  const QuranTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ Image.asset("assets/images/titlewidget.png",) ]),
          TextField(
            cursorColor:  const Color(0xffE2BE7F),
            decoration: InputDecoration(
              hintText: "sura name",
              hintStyle: GoogleFonts.elMessiri(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
              prefixIcon: ImageIcon(AssetImage("assets/images/quran.png",),
              color: Color(0xffE2BE7F),
              ),
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:const BorderSide(
                  color: Color(0xffE2BE7F)
                ) 
              ),
               enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:const BorderSide(
                  color: Color(0xffE2BE7F)
                ) 
              ),
               focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(10),
                borderSide:const BorderSide(
                  color: Color(0xffE2BE7F)
                ) 
              )
            ),
            
          ),
          const SizedBox(height: 20,),
          Text("Most Recently",style: GoogleFonts.elMessiri(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.white
          ),),
          const SizedBox(height: 10,),

          
        ],
      ),
    );
  }
}