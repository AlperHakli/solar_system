import 'package:flutter/material.dart';
import 'package:solar_system/ui/widgets/generalwidgets/adjustibleemptycontainer.dart';
import 'package:solar_system/ui/widgets/generalwidgets/autosizedcenterheaderwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/autosizedtextwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/getimagewithimgnamewidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/headertextwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/secontheaderautosizedtext.dart';

import '../generalwidgets/smalleremptycontainer.dart';

class Toppart extends StatelessWidget {
  String imgname;
  String header;

   Toppart({super.key,required this.header,required this.imgname});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    return Center(
      child: Column(
        children: [
          Getimagewithimgname(imgname: imgname, heightdivide: 5, widthdivide: 3, iscircular: true),
          Adjustibleemptycontainer(divider: 300),
          Autosizedcenterheaderwidget(data: header,fontsizewidthdivider: 16,),
          Secondheaderautosizedtext(data: "Galaxy",withdivider: 25,),

        ],

      ),
    );
  }
}
