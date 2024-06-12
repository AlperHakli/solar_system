import 'package:flutter/material.dart';
import 'package:solar_system/ui/widgets/generalwidgets/datatexts.dart';
import 'package:solar_system/ui/widgets/generalwidgets/headertextwidget.dart';

class Middlepart extends StatelessWidget {
  String header;
  String content;
  Middlepart({super.key,required this.header,required this.content});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Headertextwidget(header: header, fontsizewidthdivider: 60, leftmarginwitdthdivider: width),
        Datatexts(text: content, widthdivider: 1.2),
      ],

    );
  }
}
