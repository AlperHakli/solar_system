import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:solar_system/data/provider/firebaseevents.dart';
import 'package:solar_system/data/provider/mainpageprovider.dart';
import 'package:solar_system/ui/pages/mainpage.dart';
import 'package:solar_system/ui/theme/darktheme.dart';
import 'package:solar_system/ui/theme/lighttheme.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
      options: const FirebaseOptions(
    apiKey: "AIzaSyCyXfI02MSwnWd2YjCZHbLsMlySvrB1luw",
    appId: 'id',
    messagingSenderId: 'sendid',
    projectId: "solarsystem-81b0b",
    storageBucket: "solarsystem-81b0b.appspot.com",
  ));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(const SystemUiOverlayStyle(
      statusBarColor: Colors.grey,
      systemNavigationBarColor: Colors.blueGrey,
    ));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
            create: (context) => Mainpageprovider(mycontext: context)),
        ChangeNotifierProvider(create: (context) => Firebaseevents()),
      ],
      child: Builder(builder: (context) {
        return FutureBuilder(
          future: context.watch<Mainpageprovider>().getthemeasync(),
          builder: (context, snapshot) {
            return MaterialApp(
              debugShowCheckedModeBanner: false,
              title: 'Flutter Demo',
              theme: snapshot.data ?? true ? darktheme : lighttheme,
              home: const Mainpage(),
            );
          },
        );
      }),
    );
  }
}
