import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';
import 'package:flutter_svg/flutter_svg.dart';

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
               if(snapshot.hasData)
                 {
                   var pictureurllist = snapshot.data!;
                   return
                   BottomNavigationBar(
                   iconSize: 55
                   ,items: [
                     BottomNavigationBarItem(
                         label: menuheaderlist[0],
                         icon: SvgPicture.asset("assets/icons/orbit.svg") ),
                     BottomNavigationBarItem(
                         label: menuheaderlist[1],
                         icon: ImageIcon(
                           NetworkImage(pictureurllist[1]),
                         )),
                     BottomNavigationBarItem(
                         label: menuheaderlist[2],
                         icon: ImageIcon(
                           NetworkImage(pictureurllist[2]),
                         )),
                     BottomNavigationBarItem(
                         label: menuheaderlist[3],
                         icon: ImageIcon(
                           NetworkImage(pictureurllist[3]),
                         )),
                   ]);

                 }
               else if(snapshot.hasError)
                 {
                   return CircularProgressIndicator();
                 }
               else
                 {
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
