import 'package:flutter/material.dart';

class Smalleremptycontainer extends StatelessWidget {
  const Smalleremptycontainer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height/40,
    );


  }

}
