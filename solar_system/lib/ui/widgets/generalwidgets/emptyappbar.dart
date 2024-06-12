import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/pageevents.dart';

class Emptyappbar extends StatelessWidget {
  PageController controller;
   Emptyappbar({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;

      return AppBar(
        toolbarHeight: height/25,
        backgroundColor: Theme.of(context).colorScheme.background,
        leading: IconButton(icon: Icon(Icons.arrow_back_outlined),onPressed: (){

          controller.animateToPage(2, duration: Duration(milliseconds: 1000), curve: Curves.easeIn);
          context.read<Pageevents>().changebottombarindex(2);

        },),
      );
  }
}
