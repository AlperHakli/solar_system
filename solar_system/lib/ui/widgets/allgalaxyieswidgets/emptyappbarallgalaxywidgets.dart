import 'package:flutter/material.dart';

class Emptyappbarallgalaxieswidget extends StatelessWidget {
  const Emptyappbarallgalaxieswidget({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return AppBar(
      toolbarHeight: height/25,
      backgroundColor: Theme.of(context).colorScheme.background,

    );
  }
}
