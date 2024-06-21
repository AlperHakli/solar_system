import 'package:flutter/material.dart';
import 'package:solar_system/ui/widgets/allgalaxyieswidgets/emptyappbarallgalaxywidgets.dart';
import 'package:solar_system/ui/widgets/generalwidgets/allsomethinglistview.dart';
import 'package:solar_system/ui/widgets/generalwidgets/emptyappbar.dart';
import 'package:solar_system/ui/widgets/generalwidgets/emptycontainer.dart';
import 'package:solar_system/ui/widgets/generalwidgets/headertextwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/smalleremptycontainer.dart';

class Allgalaxyiespage extends StatelessWidget {
  const Allgalaxyiespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Emptyappbarallgalaxieswidget(),
            Smalleremptycontainer(),
            Headertextwidget(header: "Galaxies", fontsizewidthdivider: 15, leftmarginwidthdivider: 25),
            Allsomethinglistview(nameofdoc: "ViewAllGalaxies", subheader: 'Galaxy',),
          ],
        ),
      ),
    );
  }
}
