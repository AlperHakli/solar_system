import 'package:flutter/material.dart';
import 'package:solar_system/ui/widgets/generalwidgets/getimagewithimgnamewidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/headertextwidget.dart';

import '../generalwidgets/smalleremptyconteiner.dart';

class Toppart extends StatelessWidget {
  String imgname;
  String header;
   Toppart({super.key,required this.header,required this.imgname});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Getimagewithimgname(imgname: imgname, heightdivide: 5, widthdivide: 3, iscircular: true),
        Smalleremptycontainer(),
        Headertextwidget(header: header, fontsizewidthdivider: 50, leftmarginwitdthdivider: width),
        
      ],

    );
  }
}
