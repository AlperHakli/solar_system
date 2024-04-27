import 'package:flutter/cupertino.dart';

class Emptycontainer extends StatelessWidget {
  const Emptycontainer({super.key});

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    return Container(
      height: height/20 ,
    );
  }
}
