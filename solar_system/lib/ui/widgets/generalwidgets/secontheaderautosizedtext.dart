import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Secondheaderautosizedtext extends StatelessWidget {
  String data;
  double withdivider;
   Secondheaderautosizedtext({super.key,required this.data,required this.withdivider});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return AutoSizeText(
      data,
      style: GoogleFonts.roboto(fontWeight: FontWeight.bold,fontSize: width/withdivider,color: Theme.of(context).colorScheme.onSurface),
    );
  }
}
