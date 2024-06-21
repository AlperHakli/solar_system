import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:solar_system/ui/widgets/generalwidgets/autosizedtextwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/datatexts.dart';
import 'package:solar_system/ui/widgets/generalwidgets/headertextwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/smalleremptycontainer.dart';

class Bottompart extends StatelessWidget {
  String age;
  String mass;
  String size;

  Bottompart(
      {super.key, required this.size, required this.mass, required this.age});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;


    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Headertextwidget(
            header: "Key Facts",
            fontsizewidthdivider: 20,
            leftmarginwidthdivider: 40),
        ListTile(
          title: Headertextwidget(
              header: "Age",
              fontsizewidthdivider: 25,
              leftmarginwidthdivider: width),
          subtitle: Autosizedtextwidget(data: age, widthdivider: 100, heightdivider: 50),
          leading: Container(
              width: width/50,
              height: width/50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Icon(Icons.star_border_outlined)),

        ),
        ListTile(
          title: Headertextwidget(
              header: "Size",
              fontsizewidthdivider: 25,
              leftmarginwidthdivider: width),
          subtitle: Autosizedtextwidget(data: size, widthdivider: 100, heightdivider: 50),
          leading: Container(
              width: width/50,
              height: width/50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Icon(Icons.double_arrow_outlined)),
        ),
        ListTile(
          title: Headertextwidget(
              header: "Mass",
              fontsizewidthdivider: 25,
              leftmarginwidthdivider: width),
          subtitle: Autosizedtextwidget(data: mass, widthdivider: 100, heightdivider: 45),
          leading: Container(
              width: width/50,
              height: width/50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Icon(Icons.scale_outlined)),
        ),
        Smalleremptycontainer(),
      ],
    );
  }
}
