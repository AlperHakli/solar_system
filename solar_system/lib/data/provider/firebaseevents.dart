import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class Firebaseevents extends ChangeNotifier {
  Stream<QuerySnapshot<Map<String, dynamic>>> getheadersstream() {
    var collection = FirebaseFirestore.instance.collection("header");

    final mystate = collection.snapshots();
    return mystate;
  }

  Stream<QuerySnapshot<Map<String, dynamic>>> getsecondmenuheadersstream() {
    var collection = FirebaseFirestore.instance.collection("Secondmenu");

    final mystate = collection.snapshots();
    return mystate;
  }
  Stream<QuerySnapshot<Map<String , dynamic>>> getimagesliderpicturenames()
  {
    var coll = FirebaseFirestore.instance.collection("Imageslider");
    final mystate = coll.snapshots();
    return mystate;
  }


  Future<String> getsecondmenupictureurl(String imageName) async {
    var ref =
        FirebaseStorage.instance.ref().child("secondmenuimages/$imageName");
    String urladress = await ref.getDownloadURL();
    return urladress;
  }
  Future<List<String>> getimagesliderpictureurls(List<String> imgnamelist)async
  {
    var imgurllist = <String>[];

    for (String image_name in imgnamelist) {
      var ref = FirebaseStorage.instance.ref().child("images/$image_name");
      String urladress = await ref.getDownloadURL();
      imgurllist.add(urladress);
    }
    return imgurllist;
  }

  Future<List<String>> getheaderpictureurl(List<String> imgnamelist) async {
    var imgurllist = <String>[];

    for (String image_name in imgnamelist) {
      var ref = FirebaseStorage.instance.ref().child("images/$image_name");
      String urladress = await ref.getDownloadURL();
      imgurllist.add(urladress);
    }
    return imgurllist;
  }





  }




