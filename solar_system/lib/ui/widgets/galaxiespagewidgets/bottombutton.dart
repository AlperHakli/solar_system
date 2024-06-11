import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solar_system/ui/pages/allgalaxiespage.dart';
import 'package:solar_system/ui/pages/mainpage.dart';

class Bottombutton extends StatelessWidget {

   Bottombutton({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Container(
      width: width/1.3,
      child: ElevatedButton(onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>Allgalaxyiespage()));
      },
          style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),

          child: Text("View all galaxies",style: GoogleFonts.exo2(fontWeight: FontWeight.bold),)),
    );
  }
}
