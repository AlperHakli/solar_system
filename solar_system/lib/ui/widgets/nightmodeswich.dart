import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../data/provider/mainpageprovider.dart';

class Myswitch extends StatelessWidget {
  const Myswitch({super.key});

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: context.watch<Mainpageprovider>().getthemeasync(),
      builder: (context , snapshot){
       return Switch(
          value: snapshot.data??true,
          onChanged: (value) {
            context.read<Mainpageprovider>().changeswichvalue(value);
          },
          activeColor: Theme.of(context).colorScheme.onBackground,
          inactiveTrackColor: Theme.of(context).colorScheme.onBackground,
        );

      },

    );
  }
}
