import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Imageslideritem extends StatelessWidget {
  String imageurl;
  String content;

  Imageslideritem({required this.imageurl, required this.content});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    var height = MediaQuery.of(context).size.height;
    return Container(
        child: Stack(
      alignment: AlignmentDirectional.center,
      children: [
        Container(
            decoration: BoxDecoration(
                color: Colors.red,
                image: DecorationImage(fit: BoxFit.fill,image: NetworkImage(imageurl)),
                borderRadius: BorderRadius.all(Radius.circular(30)))),
        Padding(
          padding: EdgeInsets.only(top: height / 4, right: width / 6),
          child: Text(
            content,
            style:
                GoogleFonts.aBeeZee(fontSize: width / 25, color: Colors.white),
          ),
        ),
      ],
    ));
  }
}
