import 'package:flutter/material.dart';

class Emptyappbarallgalaxieswidget extends StatelessWidget {
  const Emptyappbarallgalaxieswidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return AppBar(
      toolbarHeight: height/15,
      backgroundColor: Theme.of(context).colorScheme.background,
      leading: IconButton(color: Theme.of(context).colorScheme.onPrimary,icon: Icon(Icons.arrow_back_outlined),onPressed: (){
        Navigator.pop(context);
      },),
    );

  }
}
