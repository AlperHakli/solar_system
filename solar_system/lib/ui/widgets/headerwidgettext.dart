import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Headerwidgettext extends StatelessWidget {
  const Headerwidgettext({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Solar",
          style: GoogleFonts.chakraPetch(fontSize: width/8,color: Theme.of(context).primaryColor),
        ),
        Text(
          "System",
          style: GoogleFonts.chakraPetch(fontSize: width/8,
              color: Theme.of(context).secondaryHeaderColor),
        ),
      ],
    );
  }
}
