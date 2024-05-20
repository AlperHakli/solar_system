import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/entity/spacecrafts.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';

class Spacecraftitem extends StatelessWidget {

  Spacecrafts spacecrafts;

  Spacecraftitem(
      {required this.spacecrafts});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery
        .of(context)
        .size
        .height;
    var width = MediaQuery
        .of(context)
        .size
        .width;
    return Container(
        height: height/2.5,
        width: width/2.5,
        decoration: BoxDecoration(color: Theme.of(context).colorScheme.onPrimary,borderRadius: BorderRadius.all(Radius.circular(15))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
            children: [
             FutureBuilder(future: context.watch<Firebaseevents>().get_image_name_at_images_file_with_image_name(spacecrafts.picturename),

           builder: (BuildContext context,AsyncSnapshot snapshot){
         if(snapshot.hasData)
           {

             return Container(

                 height: height/3.5,
                 width: width/2.5,
                 child: Image.network(snapshot.data,fit: BoxFit.fill,));
           }
            else if (snapshot.hasError) {
            print("hata var streamda");
            return CircularProgressIndicator();
            } else {
            print("data yok futuredaaaaaaaaaaaaaaa");
            return CircularProgressIndicator();}

           }),
        Padding(
          padding: EdgeInsets.only(top: height/100,left: width/100),
          child: Text(spacecrafts.headertext,style: GoogleFonts.dmSans(color: Theme.of(context).colorScheme.onSecondary),),
        ),
        Text(spacecrafts.content),
        ],
            ),
      );
  }
}
