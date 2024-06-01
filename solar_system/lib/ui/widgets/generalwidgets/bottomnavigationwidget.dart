import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';
import 'package:solar_system/data/provider/pageevents.dart';
import 'package:solar_system/ui/pages/blackholepage.dart';
import 'package:solar_system/ui/pages/galaxiespage.dart';
import 'package:solar_system/ui/pages/mainpage.dart';
import 'package:solar_system/ui/pages/pagecontroller.dart';
import 'package:solar_system/ui/pages/planetspage.dart';
import 'package:solar_system/ui/pages/starspage.dart';

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
                  .get_image_names_at_images_file_with_image_name_list(picturenamelist),
              builder: (context, snapshot) {
                if (snapshot.hasData) {
                  var pictureurllist = snapshot.data!;
                  return CurvedNavigationBar(
                    index: context.watch<Pageevents>().getbottombarindex(),
                    color: Colors.blueGrey,
                    backgroundColor: Colors.transparent,
                    buttonBackgroundColor: Colors.blue,
                    animationDuration: Duration(milliseconds: 1000),
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
                      context.read<Pageevents>().changebottombarindex(value);

                    },
                  );
                } else if (snapshot.hasError) {
                  print("hata oluştuuuuuuu");
                  return const CircularProgressIndicator();
                } else {
                  print("data yokkkkkkkk");
                  return const CircularProgressIndicator();
                }
              },
            );
          } else if (snapshot.hasError) {
            return const Center();
          } else {
            return const Center();
          }
        });
  }
}
