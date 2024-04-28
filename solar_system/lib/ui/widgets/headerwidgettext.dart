import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Headerwidgettext extends StatelessWidget {
  const Headerwidgettext({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Container(
          width: width/20,
        ),
        Text(
          "Solar",
          style: GoogleFonts.chakraPetch(fontSize: width/11,color: Theme.of(context).primaryColor),
        ),
        Text(
          "System",
          style: GoogleFonts.chakraPetch(fontSize: width/11,
              color: Theme.of(context).secondaryHeaderColor),
        ),
      ],
    );
  }
}
