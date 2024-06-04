import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';

class Aboutblackhole extends StatelessWidget {
  const Aboutblackhole({super.key});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: context.watch<Firebaseevents>().getaboutblackhole(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {


DocumentSnapshot mydoc = snapshot.data!.docs[0];
print(mydoc.reference.id);

return Center();
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
