import 'package:flutter/cupertino.dart';

class Adjustibleemptycontainer extends StatelessWidget {
  double divider;
   Adjustibleemptycontainer({super.key,required this.divider});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height/divider,
    );
  }
}
