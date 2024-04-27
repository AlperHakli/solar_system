import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mainpageprovider extends ChangeNotifier {
  BuildContext mycontext;

  Mainpageprovider({required this.mycontext});

  Future<bool> getthemeasync() async {
    SharedPreferences sprefs = await SharedPreferences.getInstance();
    bool isfirstthemedark =
        MediaQuery.of(mycontext).platformBrightness == Brightness.dark;
    bool nowtheme = sprefs.getBool("isdarktheme") ?? isfirstthemedark;
    return nowtheme;
  }

  bool gettheme() {
    getthemeasync().then((value) {
      return value;
    });
    return true;
  }

  Future<void> changeswichvalue(bool value) async {
    SharedPreferences sprefs = await SharedPreferences.getInstance();
    sprefs.setBool("isdarktheme", value);
    notifyListeners();
  }
}
