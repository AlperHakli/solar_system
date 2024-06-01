import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/entity/generalentity.dart';
import 'package:solar_system/ui/widgets/mainpagewidgets/spacecraftitem.dart';

import '../../../data/provider/firebaseevents.dart';
import '../generalwidgets/emptycontainer.dart';

class Spacecraftswidget extends StatelessWidget {
  const Spacecraftswidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return StreamBuilder(
        stream: context.watch<Firebaseevents>().getspacecraftsinformation(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var spacecraftlist = <Generalentity>[];
            var docs = snapshot.data!.docs;
            for (DocumentSnapshot documentSnapshot in docs) {
              Map<String, dynamic> mydocmap =
                  documentSnapshot.data() as Map<String, dynamic>;
              spacecraftlist.add(Generalentity(
                  picturename: mydocmap["picture name"],
                  headertext: mydocmap["name"],
                  content: mydocmap["content"]));
            }

            return Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Column(
                  children: [
                    Spacecraftitem(spacecrafts: spacecraftlist[0]),
                    Emptycontainer(),
                    Spacecraftitem(spacecrafts: spacecraftlist[1])
                  ],
                ),
                Padding(
                  padding: EdgeInsets.only(top: height / 7),
                  child: Column(
                    children: [
                      Spacecraftitem(spacecrafts: spacecraftlist[2]),
                      Emptycontainer(),
                      Spacecraftitem(spacecrafts: spacecraftlist[3])
                    ],
                  ),
                ),
              ],
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
