import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/foundation.dart';

class firedb { 

 static Future<bool> getUser() async { 
  final FirebaseAuth _auth = await FirebaseAuth.instance;
    User? curentUser =   _auth.currentUser;
    String user = "";
  await FirebaseFirestore.instance.collection("Users").doc(curentUser!.uid).get().then((value) =>  {
      user = value.data().toString()
  });
  
  return user == "null" ? true  : false ;
}


  Future<void> createNewUser(String name , String email , String PhotoUrl , String uid) async { 
    final FirebaseAuth _auth = await FirebaseAuth.instance;
    User? curentUser =   _auth.currentUser;
   if(  await getUser() == true ){
    FirebaseFirestore.instance.collection("Users").doc(curentUser!.uid).set(
      {
        "Name": name.toString(),
        "Email" : email.toString(),
        "Photo" : PhotoUrl.toString(),
        "uid" : uid.toString(),
        "Money" : 50000 
      }
    );}else { debugPrint("Thik thak Kaj Korche");}

    

  }  
 


}