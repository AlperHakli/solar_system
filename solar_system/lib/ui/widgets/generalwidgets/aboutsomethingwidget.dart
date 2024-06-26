import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';

import '../../../data/model/aboutsomethingentity.dart';

class Aboutsomethingwidget extends StatelessWidget {
  String name;

  Aboutsomethingwidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: context.watch<Firebaseevents>().getaboutsomething(name),
        builder: (context, snapshot) {
          if (snapshot.hasData) {

            Map<String, dynamic> documentmap =
                snapshot.data!.data() as Map<String, dynamic>;
           var mydatas =  Aboutsomethingentity(
               picture_name: documentmap["picture_name"],
               content: documentmap["content"],
               header: documentmap["header"]);

            return Container(child: Card(
              color: Theme.of(context).colorScheme.onBackground,
              child: Center(),
            ),);
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("Snapshot error"),
            );
          } else {
            return const Center(
              child: Text("Snapshot no data"),
            );
          }
        });
  }
}
