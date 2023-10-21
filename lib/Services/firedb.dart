import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';

class firedb { 

  Future<void> createNewUser(String name , String email , String PhotoUrl , String uid) async { 
    final FirebaseAuth _auth = await FirebaseAuth.instance;
    User? curentUser =   _auth.currentUser;
   
    FirebaseFirestore.instance.collection("Users").doc(curentUser!.uid).set(
      {
        "Name": name.toString(),
        "Email" : email.toString(),
        "Photo" : PhotoUrl.toString(),
        "uid" : uid.toString()
      }
    );

  }  
}