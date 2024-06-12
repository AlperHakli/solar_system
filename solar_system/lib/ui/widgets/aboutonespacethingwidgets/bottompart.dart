import 'package:flutter/material.dart';
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

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Headertextwidget(
            header: "Key Facts",
            fontsizewidthdivider: 60,
            leftmarginwitdthdivider: width),
      ],
    );
  }
}
