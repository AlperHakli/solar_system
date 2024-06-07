import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Datatexts extends StatelessWidget {
  String text;
  double widthdivide;
   Datatexts({super.key,required this.text,required this.widthdivide});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Text(text,style: GoogleFonts.sourceCodePro(fontSize: width/widthdivide),);
  }
}
