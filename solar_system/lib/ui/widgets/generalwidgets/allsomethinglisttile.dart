import 'package:flutter/material.dart';
import 'package:solar_system/ui/pages/aboutonespacething.dart';
import 'package:solar_system/ui/widgets/generalwidgets/datatexts.dart';
import 'package:solar_system/ui/widgets/generalwidgets/headertextwidget.dart';

import '../../../data/model/listviewcollmodel.dart';

class Allsomethinglisttile extends StatelessWidget {
  Listviewcollmodel listviewcollmodel;

  Allsomethinglisttile({super.key, required this.listviewcollmodel});

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: (context) =>
                    Aboutonespacething(listviewcollmodel: listviewcollmodel)));
      },
      child: ListTile(
        title: Headertextwidget(
            header: listviewcollmodel.header,
            fontsizewidthdivider: 20,
            leftmarginwitdthdivider: width),
        subtitle: Datatexts(
          text: "${listviewcollmodel.content.substring(0, 100)}...",
          widthdivider: 25,
        ),
        trailing: IconButton(
          onPressed: () {
            Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => Aboutonespacething(
                        listviewcollmodel: listviewcollmodel)));
          },
          icon: const Icon(Icons.arrow_forward_ios_outlined),
        ),
      ),
    );
  }
}
