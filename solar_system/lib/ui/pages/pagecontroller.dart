import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/pageevents.dart';
import 'package:solar_system/ui/pages/blackholepage.dart';
import 'package:solar_system/ui/pages/galaxiespage.dart';
import 'package:solar_system/ui/pages/mainpage.dart';
import 'package:solar_system/ui/pages/planetspage.dart';
import 'package:solar_system/ui/pages/starspage.dart';
import 'package:solar_system/ui/widgets/generalwidgets/bottomnavigationwidget.dart';

class Pagecontrollerwidget extends StatefulWidget {
  const Pagecontrollerwidget({super.key});

  @override
  State<Pagecontrollerwidget> createState() => _PagecontrollerwidgetState();
}

class _PagecontrollerwidgetState extends State<Pagecontrollerwidget> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    var _pagecontroller = PageController(initialPage: 2);
    return Scaffold(
      bottomNavigationBar: Bottomnavigationwidget(),
      body: PageView(
        controller: _pagecontroller,
        children: [
          Starspage(),
          Blackholepage(),
          Mainpage(),
          Galaxiespage(),
          Planetspage(),
        ],
        onPageChanged: (value){
          context.read<Pageevents>().changebottombarindex(value);
          _pagecontroller.animateToPage(context.watch<Pageevents>().getbottombarindex(), duration: Duration(milliseconds: 1000), curve: Curves.easeIn);
        },
      ),
    );
  }

  @override
  // TODO: implement wantKeepAlive
  bool get wantKeepAlive => true;
}

