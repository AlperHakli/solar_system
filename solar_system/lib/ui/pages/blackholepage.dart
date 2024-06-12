import 'package:flutter/material.dart';
import 'package:solar_system/ui/widgets/generalwidgets/aboutsomethingwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/firstcontentwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/appbarwidget.dart';
import 'package:solar_system/ui/widgets/mainpagewidgets/mainpageappbar.dart';
import 'package:solar_system/ui/widgets/generalwidgets/bottomnavigationwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/headertextwidget.dart';

class Blackholepage extends StatelessWidget {
  PageController controller;
   Blackholepage({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Appbarwidget(header: "Black Holes"),
             Aboutsomethingwidget(name: "Aboutblackhole",),



          ],
        ),

      ),
    );
  }
}
