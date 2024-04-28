import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';
import 'package:solar_system/data/provider/mainpageprovider.dart';

class Bottomnavigationwidget extends StatelessWidget {
  const Bottomnavigationwidget({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: context.watch<Firebaseevents>().getheadersstream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List docs = snapshot.data!.docs;
            var menuheaderlist = <String>[];
            var picturenamelist = <String>[];

            for (DocumentSnapshot doc in docs) {
              Map<String, dynamic> mymap = doc.data() as Map<String, dynamic>;
              String headerr = mymap["headers"];
              String picturename = mymap["picture name"] ?? "nulll";
              menuheaderlist.add(headerr);
              picturenamelist.add(picturename);
            }
            return FutureBuilder(
              future: context
                  .watch<Firebaseevents>()
                  .getheaderpictureurl(picturenamelist),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var pictureurllist = snapshot.data!;
                  return CurvedNavigationBar(
                    color: Colors.blueGrey,
                    backgroundColor: Colors.transparent,
                    buttonBackgroundColor: Colors.blue,
                    items: [
                      SizedBox(
                          width: 50,
                          height: 45,
                          child: Image.network(pictureurllist[0])),
                      SizedBox(
                          width: 50,
                          height: 45,
                          child: Image.network(pictureurllist[1])),
                      SizedBox(
                          width: 50,
                          height: 45,
                          child: Image.network(pictureurllist[4])),
                      SizedBox(
                          width: 50,
                          height: 45,
                          child: Image.network(pictureurllist[2])),
                      SizedBox(
                          width: 50,
                          height: 45,
                          child: Image.network(pictureurllist[3])),
                    ],
                    onTap: (value) {
                      context.read<Mainpageprovider>().changeindex(value);
                    },
                  );
                } else if (snapshot.hasError) {
                  print("hata oluştuuuuuuu");
                  return CircularProgressIndicator();
                } else {
                  print("data yokkkkkkkk");
                  return CircularProgressIndicator();
                }
              },
            );
          } else if (snapshot.hasError) {
            return Center();
          } else {
            return Center();
          }
        });
  }
}
