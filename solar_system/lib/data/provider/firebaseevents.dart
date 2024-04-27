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

  Future<String> getsecondmenupictureurl(String image_name) async {
    var ref =
        FirebaseStorage.instance.ref().child("secondmenuimages/$image_name");
    String urladress = await ref.getDownloadURL();
    return urladress;
  }

  Future<String> getheaderpictureurl(String image_name) async {
    var ref = FirebaseStorage.instance.ref().child("images/$image_name");
    String urladress = await ref.getDownloadURL();

    return urladress;
  }
}
