import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';

class Secondmenucards extends StatelessWidget {
  String picture_name;
  String name;

  Secondmenucards({required this.picture_name, required this.name});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return FutureBuilder(
        future: context
            .watch<Firebaseevents>()
            .getsecondmenupictureurl(picture_name),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            String imgurl = snapshot.data ?? "null";
            return Card(
              child: Container(
                width: width / 1.2,
                height: height / 3,
                decoration: BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(15)),
                    image: DecorationImage(
                        image: NetworkImage(imgurl), fit: BoxFit.cover)),
                child: Column(
                  children: [
                    Row(children: [
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, left: 16),
                        child: Text(
                          textAlign: TextAlign.start,
                          "$name",
                          style: TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                    Spacer(),
                    Divider(),
                    SizedBox(
                      height: height/14,
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(onPressed: (){

                            }, icon: Icon(Icons.arrow_forward_ios)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return Center(
              child: Text("HATA VARR"),
            );
          } else {
            return Center(
              child: Text("DATA YOKK"),
            );
          }
        });
  }
}
