import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/provider/firebaseevents.dart';

class Aboutsomething extends StatelessWidget {
  String name;
   Aboutsomething({super.key,required this.name});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return StreamBuilder(
      stream: context.watch<Firebaseevents>().getaboutsomething(),
      builder: (context , snapshot){
        if(snapshot.hasData)
        {
          DocumentSnapshot mydocument = snapshot.data!.docs[0];
          Map<String,dynamic> mymap = mydocument.data() as Map<String,dynamic>;
          String data = mymap[name];

          return Container(
            width: width/1.1,
            child: Card(
              color: Theme.of(context).colorScheme.background,
                elevation: 3,
                child: Text("${data.substring(0,500)}..."),
          ));


        }
        else if (snapshot.hasError) {
          return const Center(
            child: Text("Snapshot error"),
          );
        } else {
          return const Center(
            child: Text("Snapshot no data"),
          );
        }
      },

    );
  }
}
