import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:solar_system/colors.dart';

class Appbarwidget extends StatelessWidget {
  const Appbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height/10,
      child: Scaffold(extendBodyBehindAppBar: true,body: CustomScrollView(
        slivers: [SliverAppBar(
          elevation: 0
          ,expandedHeight: height/10,
          backgroundColor: Colors.transparent,
          title: Row(
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
          ),



        )],

      ),),
    );


    /*Row(
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
    );*/
  }
}
