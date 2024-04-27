import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/ui/widgets/firstheaderwitgetcards.dart';

import '../../data/provider/firebaseevents.dart';

class Firstheaderwidget extends StatelessWidget {
  const Firstheaderwidget({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;

    return StreamBuilder(
        stream: context.watch<Firebaseevents>().getheadersstream(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            List mydocuments = snapshot.data!.docs;

            return Container(
              width: width / 1.05,
              height: height / 3,
              decoration: BoxDecoration(),
              child: SizedBox(
                width: width,
                child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: mydocuments.length,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2.1,
                        mainAxisSpacing: 0),
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      DocumentSnapshot mydocument = mydocuments[index];
                      Map<String, dynamic> mydatamap =
                          mydocument.data() as Map<String, dynamic>;
                      String header = mydatamap["headers"] ?? "data yok";
                      String picturename = mydatamap["picture name"] ?? "nulll";

                      return Mycard(
                        header: header,
                        picture_name: picturename,
                      );
                    }),
              ),
            );
          } else {
            return const Text(
              "Data yok",
              style: TextStyle(fontSize: 25),
            );
          }
        });
  }
}
