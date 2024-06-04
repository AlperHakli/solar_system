import 'package:flutter/material.dart';
import 'package:solar_system/ui/widgets/blackholespagewidgets/aboutblackhole.dart';
import 'package:solar_system/ui/widgets/generalwidgets/firstcontentwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/appbarwidget.dart';
import 'package:solar_system/ui/widgets/mainpagewidgets/mainpageappbar.dart';
import 'package:solar_system/ui/widgets/generalwidgets/bottomnavigationwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/headertextwidget.dart';

class Blackholepage extends StatelessWidget {
  const Blackholepage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Appbarwidget(header: "About Black Holes"),
            Aboutblackhole(),



          ],
        ),

      ),
    );
  }
}
