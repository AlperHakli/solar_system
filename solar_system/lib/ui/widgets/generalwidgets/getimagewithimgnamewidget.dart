import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';

class Getimagewithimgname extends StatelessWidget {
  String imgname;
  double widthdivide;
  double heightdivide;

  Getimagewithimgname({super.key, required this.imgname,required this.heightdivide,required this.widthdivide});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return FutureBuilder(
        future: context
            .watch<Firebaseevents>()
            .get_image_name_at_secondmenuimages_file_with_image_name(imgname),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return SizedBox(
              width: width/widthdivide,
                height: height/heightdivide,

                child: Image.network(snapshot.data!,fit: BoxFit.fill,));
          } else if (snapshot.hasError) {
            return Center();
          } else {
            return Center();
          }
        });
  }
}
