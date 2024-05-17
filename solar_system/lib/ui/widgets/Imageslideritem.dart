import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Imageslideritem extends StatelessWidget {
  String imageurl;
  String content;
  Imageslideritem({required this.imageurl,required this.content});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;

    var height = MediaQuery.of(context).size.height;
    return Container(
        width: width,
        height: height / 3,
        child: Stack(
          alignment: AlignmentDirectional.center,
          children: [
            Image.network(imageurl,height: height/3,width: width,fit: BoxFit.fill,),
            Padding(
              padding: EdgeInsets.only(
                  top: height / 4, right: width / 6),
              child: Text(
               content,
                style: GoogleFonts.aBeeZee(fontSize: width/20,color: Colors.white),
              ),
            ),
          ],
        ));
  }
}
