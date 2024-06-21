import 'package:flutter/material.dart';
import 'package:solar_system/ui/widgets/mainpagewidgets/Imageslider.dart';
import 'package:solar_system/ui/widgets/mainpagewidgets/aboutnasawidget.dart';
import 'package:solar_system/ui/widgets/mainpagewidgets/bottomlistwidget.dart';

import 'package:solar_system/ui/widgets/mainpagewidgets/mainpageappbar.dart';
import 'package:solar_system/ui/widgets/generalwidgets/headertextwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/smalleremptycontainer.dart';
import 'package:solar_system/ui/widgets/mainpagewidgets/spacecraftswidget.dart';

import '../widgets/generalwidgets/bottomnavigationwidget.dart';
import '../widgets/generalwidgets/emptycontainer.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SafeArea(
      top: false,
      child: PopScope(
       canPop: false,
        child: Scaffold(
          extendBody: true,
          backgroundColor: Theme.of(context).colorScheme.background,

          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Flexible(
                  child: ListView(
                    children: [
                      Mainpageappbar(),
                      Emptycontainer(),
                      Imageslider(),
                      Emptycontainer(),
                      Headertextwidget(header: "Spacecrafts",fontsizewidthdivider: 17,leftmarginwidthdivider: 25,),
                      Divider(color: Colors.black,),
                      Spacecraftswidget(),
                      Emptycontainer(),
                      Headertextwidget(header: "Spacestructures",fontsizewidthdivider: 17,leftmarginwidthdivider: 25,),
                      Divider(color: Colors.black,),
                      Bottomlistwidget(),
                      Emptycontainer(),
                      Aboutnasa(),
                      Emptycontainer(),



                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
