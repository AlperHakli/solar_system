import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/ui/widgets/generalwidgets/aboutsomethingwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/firstcontentwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/appbarwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/moreinformationbutton.dart';
import 'package:solar_system/ui/widgets/mainpagewidgets/mainpageappbar.dart';
import 'package:solar_system/ui/widgets/generalwidgets/bottomnavigationwidget.dart';
import 'package:solar_system/ui/widgets/generalwidgets/headertextwidget.dart';

import '../../data/provider/firebaseevents.dart';
import '../widgets/galaxiespagewidgets/bottombutton.dart';
import '../widgets/galaxiespagewidgets/didyouknowaboutmilkywaywidget.dart';
import '../widgets/generalwidgets/datatexts.dart';
import '../widgets/generalwidgets/emptyappbar.dart';
import '../widgets/generalwidgets/emptycontainer.dart';
import '../widgets/generalwidgets/getimagewithimgnamewidget.dart';
import '../widgets/generalwidgets/smalleremptycontainer.dart';

class Blackholepage extends StatelessWidget {
  PageController controller;
   Blackholepage({super.key,required this.controller});

  @override
  Widget build(BuildContext context) {
    return StreamBuilder(
        stream:
        context.watch<Firebaseevents>().getaboutsomething("Aboutblackhole"),
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
                      Appbarwidget(
                        header: mymap["header"],
                      ),
                      Smalleremptycontainer(),
                      Padding(
                        padding: const EdgeInsets.only(left: 16.0),
                        child: Datatexts(
                          text: mymap["firstcontent"],
                          widthdivider: 23,
                        ),
                      ),
                      Emptycontainer(),
                     //TODO: bu sayfadaki moreinformation button u koy ve bu butonun gideceği sayfa kazık gibi olmuş onu düzelt

                      Getimagewithimgname(
                        imgname: mymap["picture_name"],
                        heightdivide: 2.5,
                        widthdivide: 1,
                        iscircular: false,
                      ),
                      Smalleremptycontainer(),
                      Headertextwidget(
                        header: "Did you know?",
                        fontsizewidthdivider: 17,
                        leftmarginwidthdivider: 25,
                      ),
                      Emptycontainer(),
                      Didyouknowaboutmilkywaywidget(name: "Didyouknowgalaxy"),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [Bottombutton()],
                      ),
                      Emptycontainer(),
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
