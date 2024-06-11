import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';
import 'package:solar_system/ui/widgets/generalwidgets/datatexts.dart';
import 'package:solar_system/ui/widgets/generalwidgets/datatextswithwidthdelimiter.dart';
import 'package:solar_system/ui/widgets/generalwidgets/headertextwidget.dart';

class Didyouknowaboutmilkywaywidget extends StatelessWidget {
  String name;

  Didyouknowaboutmilkywaywidget({super.key, required this.name});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      width: width,
      height: height / 3,
      child: FutureBuilder(
          future: context
              .watch<Firebaseevents>()
              .getaboutsomething("Didyouknowgalaxy"),
          builder: (context, snaptube) {
            if (snaptube.hasData) {
              Map<String, dynamic> mymap =
                  snaptube.data!.data() as Map<String, dynamic>;
              return Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Container(width: width/30,),
                  Container(
                    decoration: BoxDecoration(color: Theme.of(context).colorScheme.surface,borderRadius: BorderRadius.all(Radius.circular(15))),
                      width: width / 6,
                      height: height / 10,
                      child: Icon(
                        Icons.tips_and_updates_outlined,
                        size: width / 10,
                      )),
                 Container(
                   width: width/20,
                 ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Headertextwidget(
                          header: mymap["header"], fontsizewidthdivider: 24,leftmarginwitdthdivider: width,),
                      Datatextswithwidthdelimiter(
                          text: mymap["content"],
                          fontsizewidthdivider: 25,
                          widthdivider: 1.4),
                    ],
                  ),

                ],
              );
            } else if (snaptube.hasError) {
              return CircularProgressIndicator();
            } else {
              return CircularProgressIndicator();
            }
          }),
    );
  }
}
