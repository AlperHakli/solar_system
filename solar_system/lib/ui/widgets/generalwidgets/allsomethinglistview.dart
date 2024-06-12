import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';

class Allsomethinglistview extends StatelessWidget {
  String nameofcoll;

  Allsomethinglistview({super.key, required this.nameofcoll});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(stream: context.watch<Firebaseevents>()
        .getallsomethinglistviewdatas(
        "ViewAllGalaxies"), builder: (context,snapshot){
    if(snapshot.hasData)
    {
    //TODO: burdan snapshot datasını alıp listtile widgeti ile yerleştir
    //TODO unutma data için model oluşturdum
    return Center();

    }
    else if (snapshot.hasError) {
    return CircularProgressIndicator(
    backgroundColor: Colors.white12,
    color: Colors.white,
    );
    } else {
    return CircularProgressIndicator(
    backgroundColor: Colors.white12,
    color: Colors.white,
    );


    });
    }
  }
