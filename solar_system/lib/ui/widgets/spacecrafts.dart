import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/provider/firebaseevents.dart';

class Spacecrafts extends StatelessWidget {
  const Spacecrafts({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return StreamBuilder(
        stream: context.watch<Firebaseevents>().getspacecraftsinformation(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            var namelist = <String>[];

            List docs = snapshot.data!.docs;
            for (DocumentSnapshot mydoc in docs) {
              Map<String, dynamic> mydocmap =
              mydoc.data() as Map<String, dynamic>;
              namelist.add(mydocmap["picture name"]);
            }
            return Center();


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
