

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Headertextwidget extends StatelessWidget {
  String header;
  double fontsizewidthdivider;
  double leftmarginwidthdivider;
  Headertextwidget({super.key,  required this.header,required this.fontsizewidthdivider,required this.leftmarginwidthdivider});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Row(
      children: [
      Container(width: width/leftmarginwidthdivider,),
    Text(header,style: GoogleFonts.roboto(color: Colors.black,fontWeight: FontWeight.bold,fontSize:width/fontsizewidthdivider ),),
      ],
    );

  }
}
