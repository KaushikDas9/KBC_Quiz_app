import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kbc_quiz_app/Screen/home.dart';

class firedb { 
 static Future<bool> getUser() async { 
  final FirebaseAuth _auth = await FirebaseAuth.instance;
    User? curentUser =   _auth.currentUser;
    String user = "";
  await FirebaseFirestore.instance.collection("Users").doc(curentUser!.uid).get().then((value) =>  {
      user = value.data().toString()
  });
  
  return user == "null" ?  false : true ;
}


  Future<void> createNewUser( BuildContext context , name , String email , String PhotoUrl , String uid) async { 
    final FirebaseAuth _auth = await FirebaseAuth.instance;
    User? curentUser =   _auth.currentUser;
   if(  await getUser() == false ){
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Home(),), (route) => false);
    FirebaseFirestore.instance.collection("Users").doc(curentUser!.uid).set(
      {
        "Name": name.toString(),
        "Email" : email.toString(),
        "Photo" : PhotoUrl.toString(),
        "uid" : uid.toString(),
        "Money" : 50000 
      }
    );}else{
    Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Home(),), (route) => false);}

  }  
 


}