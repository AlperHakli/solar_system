import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';
import 'package:solar_system/ui/widgets/secondmenucards.dart';

class Bottomlistwidget extends StatelessWidget {
  const Bottomlistwidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Flexible(
      child: StreamBuilder(
          stream: context.watch<Firebaseevents>().getsecondmenuheadersstream(),
          builder: (context, snaphot) {
            if (snaphot.hasData) {
              List mydocuments = snaphot.data!.docs;

              return ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: mydocuments.length,
                  itemBuilder: (context, index) {
                    DocumentSnapshot mydocument = mydocuments[index];
                    Map<String, dynamic> mydatamap =
                        mydocument.data() as Map<String, dynamic>;
                    String header = mydatamap["isim"] ?? "data yok";
                    String picturename = mydatamap["resim isim"] ?? "nulll";
                    return Secondmenucards(picture_name: picturename, name: header);

                  });
            } else if (snaphot.hasError) {
              return Center(
                child: Text("Snapshot error"),
              );
            } else {
              return Center(
                child: Text("Snapshot no data"),
              );
            }
          }),
    );
  }
}
/* child: ListView.builder(
          shrinkWrap: true,
          itemCount: trylist.length,
          itemBuilder: (context, index) {
            return Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children:[
                Padding(
                  padding: const EdgeInsets.only(top: 16.0),
                  child: Container(
                    decoration: BoxDecoration(
                        borderRadius: const BorderRadius.all(Radius.circular(20)),
                        color: Theme.of(context).colorScheme.primary),
                    height: height / 4,
                    width: width/1.05,
                    child: Text(trylist[index]),
                  ),
                ),
              ],
            );
          }),*/
