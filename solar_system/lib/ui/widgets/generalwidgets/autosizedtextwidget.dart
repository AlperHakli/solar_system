import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class Autosizedtextwidget extends StatelessWidget {
  String data;
  double widthdivider;
  double heightdivider;

   Autosizedtextwidget({super.key,required this.data,required this.widthdivider,required this.heightdivider});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
        width: width/widthdivider,
        height: height/heightdivider,
        child: AutoSizeText(data,));
  }
}
