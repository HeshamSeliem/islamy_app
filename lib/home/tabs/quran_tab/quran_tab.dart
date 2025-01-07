import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:islamy_app/home/tabs/quran_tab/horisental_sura_item.dart';
import 'package:islamy_app/home/tabs/quran_tab/sura_name_item.dart';
import 'package:islamy_app/models/sura_model.dart';
import 'package:islamy_app/suraDetails/sura_details.dart';

class QuranTab extends StatefulWidget {
   QuranTab({super.key});

  @override
  State<QuranTab> createState() => _QuranTabState();
}

class _QuranTabState extends State<QuranTab> {
  var searchController = TextEditingController();

  @override
  void initState() {
    super.initState();
    searchController.addListener(onSearch);
  }
  onSearch(){
    SuraModel.suraResult.clear(); // to delete the list item befor searching
    String text = searchController.text;
    if(text.isNotEmpty)
    {
      for(String data in arabicQuranSuras)
      {
       // if(data.toLowerCase().contains(text.toLowerCase()))
       if(data.contains(text))
        {
          SuraModel.suraResult.add(data);
        }
      }
     
    }
      
    setState(() {
        
      });
  }

  @override
  Widget build(BuildContext context) {
    // i updated this file to test
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [ 
         Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [ Image.asset("assets/images/titlewidget.png",) ]),
           _searchItem(),
          const SizedBox(height: 20,),
           _horisentalSuraName(),
          const SizedBox(height: 16,),
          _verticalSuraName(),
        ],
      ),
    );
  }
  Widget _verticalSuraName()
  {
    return Expanded(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
              Text("Sura List",style: GoogleFonts.elMessiri(
              fontSize: 16,
              fontWeight: FontWeight.w700,
              color: Colors.white
            ),),
            const SizedBox(height: 8,),
            Expanded(
              child: ListView.builder(
                itemCount: SuraModel.suraResult.isNotEmpty
                ? SuraModel.suraResult.length
                : SuraModel.englishQuranSurahs.length
                ,
                itemBuilder: (context, index) {
                  return InkWell(
                    onTap: ()
                    {
                      Navigator.pushNamed(
                        context,
                         SuraDetailsScreen.routeName,
                         arguments: SuraModel.getModel(index)
                         );
                    },
                    child: SuraNameItem(
                                  
                      suraModel: (SuraModel.suraResult.isNotEmpty)
                      ?SuraModel.getSelectedSuraModel(index)
                      :SuraModel.getModel(index)
                    ),
                  );
                
                },
                ),
            )
        ],
      ),
    );
  }
 
  Widget _horisentalSuraName()
  {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
          Text("Most Recently",style: GoogleFonts.elMessiri(
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Colors.white
          ),),
          const SizedBox(height: 16,),
          (searchController.text.isNotEmpty) ? SizedBox()
        : SizedBox(
          height: 150,
           child: ListView.separated(
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) => HorisentalSuraItem(
              model: SuraModel.getModel(index),
            ),
             separatorBuilder: (context, index) => const SizedBox(width: 10,),
              itemCount:englishQuranSurahs.length),
         ),
      ],
    );
  }
  
  Widget _searchItem()
  {
    return  TextField(
            style: GoogleFonts.elMessiri(
                 fontSize: 18,
                  fontWeight: FontWeight.w400,
                  color: Colors.white
                ),
            controller: searchController,
            cursorColor:  const Color(0xffE2BE7F),
            decoration: InputDecoration(
              hintText: "sura name",
              hintStyle: GoogleFonts.elMessiri(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Colors.white
              ),
              prefixIcon: const ImageIcon(AssetImage("assets/images/quran.png",),
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
            
          );
  }
}