import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solar_system/ui/pages/moreinformationpage.dart';

class Moreinformationbutton extends StatelessWidget {
  String header;
  String content;
  String buttonname;
   Moreinformationbutton({super.key,required this.content , required this.header,required this.buttonname});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Center(
      child: Container(
        width: width/1.3,
        child: ElevatedButton(onPressed: (){
          Navigator.push(context, MaterialPageRoute(builder: (context)=>Moreinformationpage(header: header, content: content)));
        },
            style: ButtonStyle(backgroundColor: MaterialStatePropertyAll(Colors.blue)),

            child: Text(buttonname,style: GoogleFonts.exo2(fontWeight: FontWeight.bold),)),
      ),
    );
  }
}
