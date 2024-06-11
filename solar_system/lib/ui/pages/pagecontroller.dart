import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';
import 'package:solar_system/data/provider/pageevents.dart';
import 'package:solar_system/ui/pages/allgalaxiespage.dart';
import 'package:solar_system/ui/pages/blackholepage.dart';
import 'package:solar_system/ui/pages/galaxiespage.dart';
import 'package:solar_system/ui/pages/mainpage.dart';
import 'package:solar_system/ui/pages/planetspage.dart';
import 'package:solar_system/ui/pages/starspage.dart';
import 'package:solar_system/ui/widgets/generalwidgets/bottomnavigationwidget.dart';

class Pagecontrollerwidget extends StatelessWidget {
  const Pagecontrollerwidget({super.key});

  @override
  Widget build(BuildContext context) {
    PageController controller = PageController(initialPage: 2);
    return Scaffold(
      bottomNavigationBar: Bottomnavigationwidget(controller: controller),
      body: PageView(
        controller: controller,
        children: [
          Blackholepage(controller: controller,),
          Galaxiespage(controller: controller),
          Mainpage(),
          Planetspage(),
          Starspage(controller: controller,),

        ],
        onPageChanged: (index) {
          context.read<Pageevents>().changebottombarindex(index);
        },
      ),

    );
  }
}
