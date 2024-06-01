import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../../../data/provider/pageevents.dart';

class Myswitch extends StatelessWidget {
  const Myswitch({super.key});

  @override
  Widget build(BuildContext context) {

    return FutureBuilder(
      future: context.watch<Pageevents>().getthemeasync(),
      builder: (context , snapshot){
       return Switch(
          value: snapshot.data??true,
          onChanged: (value) {
            context.read<Pageevents>().changeswichvalue(value);
          },
          activeColor: Theme.of(context).colorScheme.onBackground,
          inactiveTrackColor: Theme.of(context).colorScheme.onBackground,
        );

      },

    );
  }
}
