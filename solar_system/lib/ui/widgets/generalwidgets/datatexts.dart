import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Datatexts extends StatelessWidget {
  String text;
  double widthdivider;
   Datatexts({super.key,required this.text,required this.widthdivider});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Text(text,style: GoogleFonts.exo2(fontSize: width/widthdivider,color: Theme.of(context).colorScheme.onSecondary));
  }
}
