import 'package:flutter/material.dart';
import 'package:islamy_app/cache/cache_helper.dart';
import 'package:islamy_app/home/home_screen.dart';
import 'package:islamy_app/my_theme_data.dart';
import 'package:islamy_app/onbording_screen.dart';
import 'package:islamy_app/suraDetails/sura_details.dart';

void main() async{
  WidgetsFlutterBinding.ensureInitialized();
 await CashHelper.init();
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      theme: MyThemeData.lightTheme,
      darkTheme: MyThemeData.darkTheme,
      themeMode: ThemeMode.light,
      debugShowCheckedModeBanner: false,
     initialRoute: CashHelper.getEligipility() == true
     ? HomeScreen.routeName
     : OnBordingScreen.routeName,
     routes: {
      OnBordingScreen.routeName : (context) =>  OnBordingScreen(),
      HomeScreen.routeName : (context) =>   HomeScreen(),
       SuraDetailsScreen.routeName : (context) =>const SuraDetailsScreen(),

     }, );
  }
}
