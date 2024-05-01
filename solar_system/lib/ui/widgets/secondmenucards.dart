import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';

class Secondmenucards extends StatelessWidget {
  String picture_name;
  String name;

  Secondmenucards({super.key, required this.picture_name, required this.name});

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
                          name,
                          style: const TextStyle(color: Colors.white, fontSize: 20,fontWeight: FontWeight.bold),
                        ),
                      )
                    ]),
                    const Spacer(),
                    const Divider(),
                    SizedBox(
                      height: height/18,
                      child: GestureDetector(
                        onTap: () {
                        },
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            IconButton(onPressed: (){

                            }, icon: const Icon(Icons.arrow_forward_ios)),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          } else if (snapshot.hasError) {
            return const Center(
              child: Text("HATA VARR"),
            );
          } else {
            return const Center(
              child: Text("DATA YOKK"),
            );
          }
        });
  }
}
