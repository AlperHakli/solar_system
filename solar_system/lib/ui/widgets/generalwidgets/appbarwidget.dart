import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class Appbarwidget extends StatelessWidget {
  String header;

  Appbarwidget({super.key, required this.header});

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width;
    var height = MediaQuery.of(context).size.height;
    return SizedBox(
      height: height / 10,
      child: Scaffold(
        extendBodyBehindAppBar: true,
        body: CustomScrollView(
          slivers: [
            SliverAppBar(
              scrolledUnderElevation: 0,
              automaticallyImplyLeading: false,
              expandedHeight: height / 10,
              backgroundColor: Colors.transparent,
              title: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Text(
                    header,
                    style: GoogleFonts.chakraPetch(
                      fontWeight: FontWeight.bold
                        ,fontSize: width / 20,
                        color: Theme.of(context).colorScheme.onPrimary),

                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
