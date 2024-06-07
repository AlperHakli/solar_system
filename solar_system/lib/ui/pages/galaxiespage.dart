import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';
import 'package:solar_system/ui/widgets/galaxiespagewidgets/didyouknowaboutmilkywaywidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/appbarwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/bottomnavigationwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/datatexts.dart';
import 'package:solar_system/ui/widgets/generalwidgets/datatextswithwidthdelimiter.dart';
import 'package:solar_system/ui/widgets/generalwidgets/emptyappbar.dart';
import 'package:solar_system/ui/widgets/generalwidgets/emptycontainer.dart';
import 'package:solar_system/ui/widgets/generalwidgets/getimagewithimgnamewidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/headertextwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/smalleremptyconteiner.dart';

class Galaxiespage extends StatelessWidget {
  PageController controller;
   Galaxiespage({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream:
            context.watch<Firebaseevents>().getaboutsomething("Aboutgalaxy"),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            Map<String, dynamic> mymap =
                snapshot.data!.data() as Map<String, dynamic>;
            return Scaffold(
              body: SingleChildScrollView(
                  child: Center(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Emptycontainer(),
                        Emptyappbar(controller: controller),
                        Appbarwidget(header: mymap["header"],controller: controller,),
                        Smalleremptycontainer(),
                        Padding(
                          padding: const EdgeInsets.only(left: 16.0),
                          child: Datatexts(text: mymap["firstcontent"],widthdivider:23,),
                        ),
                        Emptycontainer(),
                        Getimagewithimgname(
                            imgname: mymap["picture_name"],
                            heightdivide: 2.5,
                            widthdivide: 1),
                        Smalleremptycontainer(),
                        Headertextwidget(header: "Did you know?",widthdivider: 17,),
                        Emptycontainer(),
                        Didyouknowaboutmilkywaywidget(name: "Didyouknowgalaxy"),
                      ],
                    ),
                  ),
              ),
            );
          } else if (snapshot.hasError) {
            return CircularProgressIndicator(
              backgroundColor: Colors.white12,
              color: Colors.white,
            );
          } else {
            return CircularProgressIndicator(
              backgroundColor: Colors.white12,
              color: Colors.white,
            );
          }
        });
  }
}
