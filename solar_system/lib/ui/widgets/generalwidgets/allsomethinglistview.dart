import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/model/listviewcollmodel.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';
import 'package:solar_system/ui/widgets/generalwidgets/allsomethinglisttile.dart';

class Allsomethinglistview extends StatelessWidget {
  String nameofdoc;
  String subheader;

  Allsomethinglistview({super.key, required this.nameofdoc,required this.subheader});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream: context
            .watch<Firebaseevents>()
            .getallsomethinglistviewdatas("ViewAllGalaxies"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List mydocuments = snapshot.data!.docs;
            print(mydocuments.length);
            return Expanded(
              child: ListView.builder(
                shrinkWrap: true,
                  itemCount: mydocuments.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot mydocument = mydocuments[index];
                    Map<String, dynamic> mydocumentmap =
                    mydocument.data() as Map<String, dynamic>;
                    var listviewcollmodel = Listviewcollmodel(
                        size: mydocumentmap["size"],
                        content: mydocumentmap["content"],
                        header: mydocumentmap["header"],
                        picture_name: mydocumentmap["picture_name"],
                        age: mydocumentmap["age"],
                        mass: mydocumentmap["mass"],
                    subheader: subheader);
                    return Allsomethinglisttile(
                       listviewcollmodel: listviewcollmodel,);

                  }),
            );
          } else if (snapshot.hasError) {
            return CircularProgressIndicator(
              backgroundColor: Colors.white12,
              color: Colors.white,
            );
          } else {
            return CircularProgressIndicator(
              backgroundColor: Colors.white12,
              color: Colors.white,
            );
          }
        });
  }
}
