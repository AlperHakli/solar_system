import 'package:flutter/material.dart';
import 'package:solar_system/data/model/listviewcollmodel.dart';
import 'package:solar_system/ui/widgets/aboutonespacethingwidgets/bottompart.dart';
import 'package:solar_system/ui/widgets/aboutonespacethingwidgets/middlepart.dart';
import 'package:solar_system/ui/widgets/aboutonespacethingwidgets/toppart.dart';
import 'package:solar_system/ui/widgets/generalwidgets/smalleremptycontainer.dart';

import '../widgets/allgalaxyieswidgets/emptyappbarallgalaxywidgets.dart';

class Aboutonespacething extends StatelessWidget {
  Listviewcollmodel listviewcollmodel;

  Aboutonespacething({super.key, required this.listviewcollmodel});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
          children: [

            Emptyappbarallgalaxieswidget(),
            Smalleremptycontainer(),
            Toppart(
                header: listviewcollmodel.header,
                imgname: listviewcollmodel.picture_name),
            Middlepart(
                header: listviewcollmodel.header,
                content: listviewcollmodel.content),
            Bottompart(
                size: listviewcollmodel.size,
                mass: listviewcollmodel.mass,
                age: listviewcollmodel.age),

          ],
      ),
    );
  }
}
