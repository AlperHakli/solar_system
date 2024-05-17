

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Secondheaderwidgettext extends StatelessWidget {
  const Secondheaderwidgettext({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Padding(
      padding:  EdgeInsets.only(left: width/25),
      child: Text("Spacecrafts",style: GoogleFonts.chakraPetch(color: Colors.black,fontWeight: FontWeight.bold,fontSize:width/18 ),),
    );
  }
}
