import 'package:flutter/material.dart';
import 'package:solar_system/ui/widgets/generalwidgets/datatexts.dart';
import 'package:solar_system/ui/widgets/generalwidgets/headertextwidget.dart';

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
            fontsizewidthdivider: 60,
            leftmarginwitdthdivider: width),
        ListTile(
          title: Headertextwidget(
              header: "Age",
              fontsizewidthdivider: 100,
              leftmarginwitdthdivider: width),
          subtitle: Datatexts(text: age, widthdivider: width / 4),
          leading: Container(
              width: width/50,
              height: width/50,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(15)),
              child: Icon(Icons.star_border_outlined)),

        ),
        ListTile(
          title: Headertextwidget(
              header: "Size",
              fontsizewidthdivider: 100,
              leftmarginwitdthdivider: width),
          subtitle: Datatexts(text: size, widthdivider: width / 4),
        ),
        ListTile(
          title: Headertextwidget(
              header: "Mass",
              fontsizewidthdivider: 100,
              leftmarginwitdthdivider: width),
          subtitle: Datatexts(text: mass, widthdivider: width / 4),
        ),
      ],
    );
  }
}
