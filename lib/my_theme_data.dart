import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyThemeData {
  static Color primaryColor = const Color(0xffE2BE7F);
  static Color darkColor = const Color(0xff202020);
  static ThemeData lightTheme = ThemeData(
      primaryColor: primaryColor,
      scaffoldBackgroundColor: Colors.transparent,
      appBarTheme: AppBarTheme(
        titleTextStyle: GoogleFonts.elMessiri(
            fontSize: 24,
            fontWeight: FontWeight.w700,
            color: const Color(0xffE2BE7F)),
        centerTitle: true,
        backgroundColor: darkColor,
      ),
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        showSelectedLabels: true,
        showUnselectedLabels: false,
        backgroundColor: primaryColor,
        selectedItemColor: Colors.white,
        type: BottomNavigationBarType.fixed,
      ),
      textTheme: TextTheme(
          titleSmall: GoogleFonts.elMessiri(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color: const Color.fromARGB(255, 227, 205, 169)),
          titleMedium: GoogleFonts.elMessiri(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: const Color(0xffE2BE7F)),
          titleLarge: GoogleFonts.elMessiri(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: const Color(0xffE2BE7F)
              ),
              bodySmall:  GoogleFonts.scheherazadeNew(
              fontSize: 18,
              fontWeight: FontWeight.w700,
              color: primaryColor),
              bodyMedium:  GoogleFonts.scheherazadeNew(
              fontSize: 20,
              fontWeight: FontWeight.w700,
              color:  primaryColor,
              ),
              bodyLarge:  GoogleFonts.scheherazadeNew(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: primaryColor,
              
              ),
      ),
              );

  static ThemeData darkTheme = ThemeData();
}
