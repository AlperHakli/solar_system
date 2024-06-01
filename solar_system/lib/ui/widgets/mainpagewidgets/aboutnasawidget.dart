import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/colors.dart';
import 'package:solar_system/data/entity/generalentity.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';

class Aboutnasa extends StatelessWidget {
  const Aboutnasa({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return StreamBuilder(
        stream: context.watch<Firebaseevents>().getaboutnasadatas(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            DocumentSnapshot mydocument = snapshot.data!.docs[0];
            Map<String, dynamic> mymap =
                mydocument.data() as Map<String, dynamic>;
            Generalentity generalentity = Generalentity(
                content: mymap["content"],
                headertext: mymap["header"],
                picturename: mymap["image_name"]);

            return Container(
              child: Card(

                color: Theme.of(context).colorScheme.background,
                  elevation: 3,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Padding(
                        padding:  EdgeInsets.only(left: width/40,top: height/50),
                        child: Row(
                          children: [
                            Text("${generalentity.headertext.substring(0,5)}",style: GoogleFonts.chakraPetch(color: aboutcolor,fontSize: width/20),),
                            Text("${generalentity.headertext.substring(5,10)}",style: GoogleFonts.chakraPetch(color: nasacolor,fontSize: width/13),),
                            Spacer(),
                            Padding(
                              padding: EdgeInsets.only(right: width/25),
                              child: Icon(Icons.arrow_forward_ios),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: width/40),
                        child: Text("${generalentity.content.substring(0,482)}..."),
                      ),
                    ],
                  ),

              ),
            );



          } else if (snapshot.hasError) {
            print("spacecraftwidget te hata varrrrrrrrrrr");
            return CircularProgressIndicator();
          } else {
            print("spacecraftwidget te data yokkkkkkkkkkkk");
            return CircularProgressIndicator();
          }
        });
  }
}
