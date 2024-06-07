import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
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
      bottomNavigationBar: Bottomnavigationwidget(controller:controller),
      body: PageView(
        controller: controller,
        children: [
          Blackholepage(),
          Galaxiespage(),
          Mainpage(),
          Planetspage(),
          Starspage(),

        ],

      ),

    );
  }
}
