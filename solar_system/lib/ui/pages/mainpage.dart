import 'package:flutter/material.dart';
import 'package:solar_system/ui/widgets/bottomlistwidget.dart';
import 'package:solar_system/ui/widgets/emptycontainer.dart';
import 'package:solar_system/ui/widgets/headerwidgettext.dart';

import '../widgets/bottomnavigationwidget.dart';
import '../widgets/secondheaderwidgettext.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      bottomNavigationBar: Bottomnavigationwidget(),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Flexible(
              child: ListView(
                children: [
                  Headerwidgettext(),
                  Emptycontainer(),
                  //   Firstheaderwidget(),
                  Secondheaderwidgettext(),
                  Bottomlistwidget(),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
