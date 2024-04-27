import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';

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
            var pictureurllist = <String>[];
            docs.map((e) {
              DocumentSnapshot mydocument = docs[e];
              DocumentSnapshot mydocument = mydocuments[index];
              Map<String, dynamic> mydatamap =
              mydocument.data() as Map<String, dynamic>;
              String header = mydatamap["headers"] ?? "data yok";
              String picturename = mydatamap["picture name"] ?? "nulll";
              print("$menuheader geldiiiiiiiii");
              menuheaderlist.add(menuheader);
              context
                  .watch<Firebaseevents>()
                  .getheaderpictureurl(picturename)
                  .then((value) {
                pictureurllist.add(value);
              });
            });

            return BottomNavigationBar(items: [
              BottomNavigationBarItem(icon: ImageIcon(
               NetworkImage(pictureurllist[0])
              ),
              label: menuheaderlist[0]
              ),
              BottomNavigationBarItem(icon: ImageIcon(
                  NetworkImage(pictureurllist[1])
              ),
                  label: menuheaderlist[1]
              ),
              BottomNavigationBarItem(icon: ImageIcon(
                  NetworkImage(pictureurllist[0])
              ),
                  label: menuheaderlist[0]
              ),
              BottomNavigationBarItem(icon: ImageIcon(
                  NetworkImage(pictureurllist[2])
              ),
                  label: menuheaderlist[2]
              ),
              BottomNavigationBarItem(icon: ImageIcon(
                  NetworkImage(pictureurllist[3])
              ),
                  label: menuheaderlist[3]
              ),



            ]);



          } else if (snapshot.hasError) {
            return Center();

          } else {
            return Center();

          }
        });
  }
}
