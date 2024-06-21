import 'package:flutter/material.dart';
import 'package:solar_system/ui/widgets/generalwidgets/adjustibleemptycontainer.dart';
import 'package:solar_system/ui/widgets/generalwidgets/autosizedtextwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/datatexts.dart';
import 'package:solar_system/ui/widgets/generalwidgets/headertextwidget.dart';

class Middlepart extends StatelessWidget {
  String header;
  String content;
  Middlepart({super.key,required this.header,required this.content});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    String headetwithaboutstring = "About $header";

    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Adjustibleemptycontainer(divider: 30),
        Headertextwidget(header: headetwithaboutstring, fontsizewidthdivider: 25, leftmarginwidthdivider: 50),
        Padding(
          padding:  EdgeInsets.only(left: width/50),
          child: Autosizedtextwidget(data: content, widthdivider: 1, heightdivider: 5),
        ),
        Adjustibleemptycontainer(divider: 30)
      ],

    );
  }
}
