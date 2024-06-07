import 'package:flutter/material.dart';
import 'package:solar_system/ui/widgets/generalwidgets/appbarwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/firstcontentwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/emptycontainer.dart';
import 'package:solar_system/ui/widgets/generalwidgets/headertextwidget.dart';

class Starspage extends StatelessWidget {
  PageController controller;
   Starspage({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Emptycontainer(),
            Appbarwidget(header: "About Stars",controller: controller,),

          ],
        ),
      ),
    );
  }
}
