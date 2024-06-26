import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';


import 'Imageslideritem.dart';

class Imageslider extends StatelessWidget {
  const Imageslider({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return StreamBuilder(
        stream: context.watch<Firebaseevents>().getimagesliderpicturenames(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var namelist = <String>[];

            List docs = snapshot.data!.docs;
            for (DocumentSnapshot mydoc in docs) {
              Map<String, dynamic> mydocmap =
                  mydoc.data() as Map<String, dynamic>;
              namelist.add(mydocmap["picture name"]);
            }
            return FutureBuilder(
                future: context
                    .watch<Firebaseevents>()
                    .get_image_names_at_images_file_with_image_name_list(namelist),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    snapshot.data!.sort;
                    return Container(
                      width: double.infinity,
                      child: CarouselSlider(
                          items: [
                           Imageslideritem(imageurl: snapshot.data![0],content: "First we launched from Earth",),
                            Imageslideritem(imageurl: snapshot.data![1],content: "Then we reach Earth's Exosphere",),
                            Imageslideritem(imageurl: snapshot.data![2],content: "Finally we are at the Moon",),
                          ],
                          options: CarouselOptions(
                            enlargeCenterPage: true,
                            viewportFraction: 0.8,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 6),
                            autoPlayAnimationDuration: Duration(seconds: 3),
                            enableInfiniteScroll: false,
                          )),
                    );
                  } else if (snapshot.hasError) {

                    return CircularProgressIndicator();
                  } else {

                    return CircularProgressIndicator();
                  }
                });
          } else if (snapshot.hasError) {

            return CircularProgressIndicator();
          } else {

            return CircularProgressIndicator();
          }
        });

  }
}
