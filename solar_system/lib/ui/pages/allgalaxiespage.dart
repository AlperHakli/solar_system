import 'package:flutter/material.dart';
import 'package:solar_system/ui/widgets/allgalaxyieswidgets/emptyappbarallgalaxywidgets.dart';

class Allgalaxyiespage extends StatelessWidget {
  const Allgalaxyiespage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          children: [
            Emptyappbarallgalaxieswidget(),
          ],
        ),
      ),
    );
  }
}
