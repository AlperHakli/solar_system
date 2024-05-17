import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/colors.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';

class Appbarwidget extends StatelessWidget {
  const Appbarwidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return StreamBuilder(
        stream: context.watch<Firebaseevents>().getappbarphotoname(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            DocumentSnapshot mydoc = snapshot.data!.docs[0];
            Map<String, dynamic> mymap = mydoc.data() as Map<String, dynamic>;
            String returnedpicturename = mymap["picture name"];
            return FutureBuilder(
              future: context
                  .watch<Firebaseevents>()
                  .getappbarpictureurl(returnedpicturename),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  return SizedBox(
                    height: height / 10,
                    child: Scaffold(
                      extendBodyBehindAppBar: true,
                      body: CustomScrollView(
                        slivers: [
                          SliverAppBar(
                            expandedHeight: height / 10,
                            backgroundColor: Colors.transparent,
                            title: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
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
                                Padding(
                                  padding:  EdgeInsets.only(top: height/25),
                                  child: Container(
                                    alignment: AlignmentDirectional.topEnd,
                                      width: width/3,
                                      height: height/7,
                                      child: Image.network(snapshot.data!)),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  );
                } else if (snapshot.hasError) {
                  return CircularProgressIndicator();
                } else {
                  return CircularProgressIndicator();
                }
              },
            );
          } else if (snapshot.hasError) {
            return CircularProgressIndicator();
          } else {
            return CircularProgressIndicator();
          }
        });
  }
}
