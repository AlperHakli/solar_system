import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Datatextswithwidthdelimiter extends StatelessWidget {
  String text;
  double fontsizewidthdivider;
  double widthdivider;
  Datatextswithwidthdelimiter({super.key,required this.text,required this.fontsizewidthdivider,required this.widthdivider});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return SizedBox(
        width: width/widthdivider,
        child: Text(text,style: GoogleFonts.exo2(fontSize: width/fontsizewidthdivider,color: Theme.of(context).colorScheme.onSurface)));
  }
}