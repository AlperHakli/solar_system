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


  Stream<DocumentSnapshot<Map<String, dynamic>>> getaboutsomething(String name) {
    var collection = FirebaseFirestore.instance.collection("Abouttexts").doc(name);

    final mystate = collection.snapshots();
    return mystate;
  }
  Stream<QuerySnapshot<Map<String,dynamic>>> getaboutnasadatas(){
    var coll = FirebaseFirestore.instance.collection("About nasa");
    final mystate = coll.snapshots();
    return mystate;



  }
  Stream<QuerySnapshot<Map<String , dynamic>>> getimagesliderpicturenames()
  {
    var coll = FirebaseFirestore.instance.collection("Imageslider");
    final mystate = coll.snapshots();
    return mystate;
  }
  Stream<QuerySnapshot<Map<String,dynamic>>> getappbarphotoname()
  {
    var coll = FirebaseFirestore.instance.collection("Appbar");
    final mystate = coll.snapshots();
    return mystate;
  }
  Stream<QuerySnapshot<Map<String,dynamic>>> getspacecraftsinformation()
  {
    var coll = FirebaseFirestore.instance.collection("Spacecrafts");
    final mystate = coll.snapshots();
    return mystate;
  }

  Future<String> getsecondmenupictureurl(String imageName) async {
    var ref =
        FirebaseStorage.instance.ref().child("secondmenuimages/$imageName");
    String urladress = await ref.getDownloadURL();
    return urladress;
  }
  Future<List<String>> get_image_names_at_images_file_with_image_name_list(List<String> imgnamelist)async
  {
    var imgurllist = <String>[];

    for (String image_name in imgnamelist) {
      var ref = FirebaseStorage.instance.ref().child("images/$image_name");
      String urladress = await ref.getDownloadURL();
      imgurllist.add(urladress);
    }
    return imgurllist;
  }
  Future<String> get_image_name_at_secondmenuimages_file_with_image_name(String imagename)async
  {
    var ref = FirebaseStorage.instance.ref().child("secondmenuimages/$imagename");
    String url = await ref.getDownloadURL();
    return url;

  }







  }




