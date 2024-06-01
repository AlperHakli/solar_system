import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';
import 'package:solar_system/ui/widgets/mainpagewidgets/secondmenucards.dart';

class Bottomlistsecondwidget extends StatelessWidget {
  const Bottomlistsecondwidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return StreamBuilder(
        stream: context.watch<Firebaseevents>().getsecondmenuheadersstream(),
        builder: (context, snaphot) {
          if (snaphot.hasData) {
            List mydocuments = snaphot.data!.docs;

            return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,childAspectRatio: 1.7),
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
            return const Center(
              child: Text("Snapshot error"),
            );
          } else {
            return const Center(
              child: Text("Snapshot no data"),
            );
          }
        }
    );
  }

}