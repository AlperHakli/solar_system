import 'package:flutter/material.dart';
import 'package:solar_system/ui/widgets/Imageslider.dart';
import 'package:solar_system/ui/widgets/bottomlistwidget.dart';
import 'package:solar_system/ui/widgets/emptycontainer.dart';
import 'package:solar_system/ui/widgets/appbarwidget.dart';
import 'package:solar_system/ui/widgets/secondheaderwidgettext.dart';
import 'package:solar_system/ui/widgets/smalleremptyconteiner.dart';
import 'package:solar_system/ui/widgets/spacecraftswidget.dart';

import '../widgets/bottomnavigationwidget.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      top: false,
      child: Scaffold(
        extendBody: true,
        backgroundColor: Theme.of(context).colorScheme.background,
        bottomNavigationBar: const Bottomnavigationwidget(),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Flexible(
                child: ListView(
                  children: const [
                    Appbarwidget(),
                    Emptycontainer(),
                    Imageslider(),
                    Emptycontainer(),
                    Secondheaderwidgettext(),
                    Divider(color: Colors.black,),
                    Spacecraftswidget(),
                    Bottomlistwidget(),
                    Divider(color: Colors.black,),
                    Emptycontainer(),


                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
