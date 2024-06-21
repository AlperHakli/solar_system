import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Autosizedcenterheaderwidget extends StatelessWidget {
  String data;
  double fontsizewidthdivider;

  Autosizedcenterheaderwidget({super.key, required this.data,required this.fontsizewidthdivider});

  @override
  Widget build(BuildContext context) {
   var width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        AutoSizeText(data,
            style: GoogleFonts.roboto(
                color: Colors.black, fontWeight: FontWeight.bold,fontSize: width/fontsizewidthdivider)),
      ],
    );
  }
}
