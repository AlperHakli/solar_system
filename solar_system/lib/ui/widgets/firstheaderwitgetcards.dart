import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';

class Mycard extends StatelessWidget {
  //String picture_url;
  String header;
  String picture_name;

  Mycard({super.key, required this.header, required this.picture_name});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        decoration: BoxDecoration(
            color: Theme.of(context).colorScheme.primary,
            borderRadius: const BorderRadius.all(Radius.circular(10))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 8.0),
              child: Text(header),
            ),
            FutureBuilder(
                future: context
                    .watch<Firebaseevents>()
                    .getheaderpictureurl(picture_name),
                builder: (context, snapshot) {
                  if (snapshot.hasData) {
                    return Expanded(
                      child: Container(
                          alignment: Alignment.center,
                          child: Image.network(snapshot.data ?? "null")),
                    );
                  } else if (snapshot.hasError) {
                    return const Text("HATA VAR !!!");
                  } else {
                    return const Text("DATA YOK!!");
                  }
                }),
          ],
        ),
      ),
    );
  }
}
