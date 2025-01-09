import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:introduction_screen/introduction_screen.dart';
import 'package:islamy_app/cache/cache_helper.dart';
import 'package:islamy_app/home/home_screen.dart';

class OnBordingScreen extends StatelessWidget {
   OnBordingScreen({super.key});
  static const String routeName = "/";
   Widget _buildImage(String assetName, [double width = 350]) {
    return Image.asset('assets/images/$assetName', width: width);
  }
  @override
  Widget build(BuildContext context) {
    var pageDecoration = PageDecoration(
      titleTextStyle: GoogleFonts.elMessiri(fontSize: 24.0, fontWeight: FontWeight.w700,color: Color(0xffE2BE7F)),
      bodyTextStyle: GoogleFonts.elMessiri(fontSize: 18.0, fontWeight: FontWeight.w700,color: Color(0xffE2BE7F)),
      bodyPadding:const EdgeInsets.fromLTRB(16.0, 0.0, 16.0, 16.0),
      pageColor: const Color(0xff202020),
      imagePadding: EdgeInsets.zero,
      imageFlex: 4,
     
    );
    return IntroductionScreen(
      globalHeader: Image.asset("assets/images/titlewidget.png"),
     dotsDecorator: const DotsDecorator(
      activeColor:Color(0xffE2BE7F),
      color: Color(0xff707070)
     ),
     done:  Padding(
       padding: const EdgeInsets.only(left: 50),
       child: Text("Finish",style: GoogleFonts.elMessiri(
           color:const Color(0xffE2BE7F)
        ),),
     ),
      showNextButton: true,
    next:  Padding(
      padding:const EdgeInsets.only(left: 50),
      child: Text("Next",style: GoogleFonts.elMessiri(
         color:const Color(0xffE2BE7F)
      ),),
    ),
      globalBackgroundColor: const Color(0xff202020),
      allowImplicitScrolling: true,
      back:  Padding(
        padding:const EdgeInsets.only(right: 50),
        child:  Text("Back",style: GoogleFonts.elMessiri(
           color:const Color(0xffE2BE7F)
        ),),
      ),
     showBackButton: true,
      pages: [
    
        PageViewModel(
        title: "Welcome To Islmi App",
          image: _buildImage('onboarding1(1x).png'),
          body: "",
           decoration: pageDecoration,
        ), 
        ///onboarding page 2
        PageViewModel(
          title: "Welcome To Islami",
          body:
              "We Are Very Excited To Have You In Our Community",
          image: _buildImage('onboarding2(1x).png'),
          decoration: pageDecoration,
          
        ),
         ///onboarding page 3
        PageViewModel(
          title: "Reading the Quran",
          body:
              "Read, and your Lord is the Most Generous",
          image: _buildImage('onboarding3(1x).png'),
         decoration: pageDecoration,
        ),
      
     ///onboarding page 4
        PageViewModel(
          title: "Bearish",
          body: "Praise the name of your Lord, the Most High",
          image: _buildImage('onboarding4(1x).png'),
          decoration: pageDecoration,
         
       ///on boarding page 5
        ),
         PageViewModel(
          title: "Holy Quran Radio",
          body: "You can listen to the Holy Quran Radio through the application for free and easily",
          image: _buildImage('onboarding5(1x).png'),
          decoration: pageDecoration,
         
        
        ),
      ],
      onDone: () => _onIntroEnd(context),
      //rtl: true, // Display as right-to-left
    
    );
  }
    final introKey = GlobalKey<IntroductionScreenState>();

  void _onIntroEnd(context) {
    CashHelper.saveEligipility();
    Navigator.pushReplacementNamed(context, HomeScreen.routeName);
  }
}