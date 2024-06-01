

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Headertextwidget extends StatelessWidget {
  String header;
  Headertextwidget({ required this.header});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.only(left: width/25),
      child: Text(header,style: GoogleFonts.chakraPetch(color: Colors.black,fontWeight: FontWeight.bold,fontSize:width/18 ),),

    );
  }
}
