import 'package:flutter/material.dart';
import 'package:islamy_app/home/home_screen.dart';
import 'package:islamy_app/onbording_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      debugShowCheckedModeBanner: false,
     initialRoute: OnBordingScreen.routeName,
     routes: {
      OnBordingScreen.routeName : (context) =>  OnBordingScreen(),
      HomeScreen.routeName : (context) =>   HomeScreen(),
     }, );
  }
}
