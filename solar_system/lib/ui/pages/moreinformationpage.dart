import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:solar_system/ui/widgets/allgalaxyieswidgets/emptyappbarallgalaxywidgets.dart';
import 'package:solar_system/ui/widgets/generalwidgets/adjustibleemptycontainer.dart';
import 'package:solar_system/ui/widgets/generalwidgets/autosizedcenterheaderwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/autosizedtextwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/datatexts.dart';
import 'package:solar_system/ui/widgets/generalwidgets/emptyappbar.dart';

class Moreinformationpage extends StatelessWidget {
  String header;
  String content;
   Moreinformationpage({super.key,required this.header,required this.content});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          children: [
            Emptyappbarallgalaxieswidget(),
            Autosizedcenterheaderwidget(data: header, fontsizewidthdivider: 10,),
            Adjustibleemptycontainer(divider: 40),
           Datatexts(text: content, widthdivider: 23),

          ],
        ),
      ),
    );
  }
}
