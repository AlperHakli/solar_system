import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';
import 'package:solar_system/ui/widgets/generalwidgets/appbarwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/bottomnavigationwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/datatexts.dart';
import 'package:solar_system/ui/widgets/generalwidgets/emptyappbar.dart';
import 'package:solar_system/ui/widgets/generalwidgets/emptycontainer.dart';
import 'package:solar_system/ui/widgets/generalwidgets/getimagewithimgnamewidget.dart';

class Galaxiespage extends StatelessWidget {
  const Galaxiespage({super.key});

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
              body: Center(
                child: Column(
                  children: [
                    Emptycontainer(),
                    Appbarwidget(header: mymap["header"]),
                    Datatexts(text: mymap["firstcontent"],widthdivide:25,),
                    Getimagewithimgname(
                        imgname: mymap["picture_name"],
                        heightdivide: 3.5,
                        widthdivide: 1.1),
                  ],
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
