import 'package:carousel_slider/carousel_slider.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';

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
                    .getimagesliderpictureurls(namelist),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    snapshot.data!.sort;
                    return SizedBox(
                      width: double.infinity,
                      child: CarouselSlider(
                          items: [
                            Container(
                                width: width,
                                height: height / 3,
                                child: Stack(
                                  alignment: AlignmentDirectional.center,
                                  children: [
                                    Image.network(snapshot.data![0]),
                                    Padding(
                                      padding: EdgeInsets.only(
                                          top: height / 5, right: width / 5),
                                      child: Text(
                                        "First we launched from earth",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ),
                                  ],
                                )),
                            Container(
                                child: Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                Image.network(snapshot.data![1]),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: height / 5, right: width / 10),
                                  child: Text(
                                    "Then we reach Earth's Exosphere",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            )),
                            Container(
                                child: Stack(
                              alignment: AlignmentDirectional.center,
                              children: [
                                SizedBox(
                                    child: Image.network(snapshot.data![2])),
                                Padding(
                                  padding: EdgeInsets.only(
                                      top: height / 5, right: width / 4),
                                  child: Text(
                                    "Finally we are at the Moon",
                                    style: TextStyle(color: Colors.white),
                                  ),
                                ),
                              ],
                            )),
                          ],
                          options: CarouselOptions(
                            height: height/3,
                            autoPlay: true,
                            autoPlayInterval: Duration(seconds: 10),
                            autoPlayAnimationDuration: Duration(seconds: 3),
                            enableInfiniteScroll: false,
                          )),
                    );
                  } else if (snapshot.hasError) {
                    print("hata var futureda");
                    return CircularProgressIndicator();
                  } else {
                    print("data yok futureda");
                    return CircularProgressIndicator();
                  }
                });
          } else if (snapshot.hasError) {
            print("hata var streamda");
            return CircularProgressIndicator();
          } else {
            print("data yok futureda");
            return CircularProgressIndicator();
          }
        });
  }
}
