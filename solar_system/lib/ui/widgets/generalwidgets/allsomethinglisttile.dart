import 'package:flutter/material.dart';
import 'package:solar_system/ui/widgets/generalwidgets/datatexts.dart';
import 'package:solar_system/ui/widgets/generalwidgets/headertextwidget.dart';

class Allsomethinglisttile extends StatelessWidget {
  String header;
  String content;
   Allsomethinglisttile({super.key,required this.header,required this.content});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: (){

      },
      child: ListTile(
        title: Headertextwidget(header: header, fontsizewidthdivider: 20, leftmarginwitdthdivider: width ),
        subtitle: Datatexts(text: "${content.substring(0,100)}...",widthdivider: 25,),
        trailing: IconButton(onPressed: () {

        },icon: const Icon(Icons.arrow_forward_ios_outlined),) ,
      ),
    );
  }
}
