import 'package:flutter/material.dart';

class Smalleremptycontainer extends StatelessWidget {


   Smalleremptycontainer();


  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height/40,
    );


  }

}
