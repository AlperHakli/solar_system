import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/colors.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';

class Mainpageappbar extends StatelessWidget {
  const Mainpageappbar({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height / 10,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              automaticallyImplyLeading: false,
              actions: [
                IconButton(onPressed: (){}, icon: Icon(Icons.more_vert,size: width/12,))
              ],
              expandedHeight: height / 10,
              backgroundColor: Colors.transparent,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(children: [
                    Text(
                      "Solar",
                      style: GoogleFonts.chakraPetch(
                          fontSize: width / 11,
                          color: Theme.of(context).primaryColor),
                    ),
                    Text(
                      "System",
                      style: GoogleFonts.chakraPetch(
                          fontSize: width / 11,
                          color: Theme.of(context)
                              .secondaryHeaderColor),
                    ),
                  ],),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
