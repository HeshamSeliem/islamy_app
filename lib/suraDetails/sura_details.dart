import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/models/sura_model.dart';

class SuraDetailsScreen extends StatefulWidget {
  const SuraDetailsScreen({super.key});
  static const String routeName = "SuraDetailsScreen";

  @override
  State<SuraDetailsScreen> createState() => _SuraDetailsScreenState();
}

class _SuraDetailsScreenState extends State<SuraDetailsScreen> {
  List<String> verses = [];

  @override
  Widget build(BuildContext context) {
    var suraModel = ModalRoute.of(context)?.settings.arguments as SuraModel;
    if (verses.isEmpty) {
      loadSuraFile(suraModel.index);
    }
    return Scaffold(
      backgroundColor: const Color(0xff202020),
      appBar: AppBar(
        backgroundColor: const Color(0xff202020),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xffE2BE7F),
          ),
        ),
        title: Text(
          suraModel.suraEn,
          style: GoogleFonts.elMessiri(
              fontSize: 24,
              fontWeight: FontWeight.w700,
              color: const Color(0xffE2BE7F)),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 18),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset("assets/images/left_mask.png"),
                Text(suraModel.suraAr,
                    style: GoogleFonts.scheherazadeNew(
                        fontSize: 24,
                        fontWeight: FontWeight.w700,
                        color: const Color(0xffE2BE7F))),
                Image.asset("assets/images/right_mask.png"),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: ListView.builder(
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.only(bottom: 10.0),
                    child: Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(color: const Color(0xffE2BE7F))),
                        child: Text.rich(
                            textAlign: TextAlign.center,
                            TextSpan(children: [
                              TextSpan(
                                text: verses[index].trim(),
                                style: GoogleFonts.scheherazadeNew(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xffE2BE7F)),
                              ),
                              TextSpan(
                                text: " (${index + 1})",
                                style: GoogleFonts.scheherazadeNew(
                                    fontSize: 20,
                                    fontWeight: FontWeight.w700,
                                    color: const Color(0xffE2BE7F)),
                              )
                            ]))),
                  );
                },
                itemCount: verses.length,
              ),
            ),
            Image.asset("assets/images/footer_mask.png"),
          ],
        ),
      ),
    );
  }

  loadSuraFile(index) async {
    String textFile =
        await rootBundle.loadString("assets/files/${index + 1}.txt");
    List<String> lines = textFile.split("\n");
    verses = lines;
    print(verses);
    setState(() {});
  }
}
