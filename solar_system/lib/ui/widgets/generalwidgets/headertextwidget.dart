

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Headertextwidget extends StatelessWidget {
  String header;
  double widthdivider;
  Headertextwidget({ required this.header,required this.widthdivider});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return  Text(header,style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold,fontSize:width/widthdivider ),);

  }
}
