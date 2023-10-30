
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:kbc_quiz_app/Screen/home.dart';
import 'package:kbc_quiz_app/Screen/login.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Localdb { 
 
 static String userUid="user"; 
 Future<bool> saveUserId(String uId , String photoUrl , String name ) async { 
   final SharedPreferences  sharedPreferences = await SharedPreferences.getInstance();
    await sharedPreferences.setString(userUid, uId );
    await sharedPreferences.setString("userPhotoUrl", photoUrl );
    return await sharedPreferences.setString("userName", name );
 }

static Future<String?> getUserId() async { 
    String? sharedPreferences = await SharedPreferences.getInstance().then( (value) {
      return value.getString(userUid).toString();
   },);
   return sharedPreferences;
 }

 Future<String?> getUserPhotoUrl() async { 
    String? sharedPreferences = await SharedPreferences.getInstance().then( (value) {
      print("PhotoUrl: ${value.getString("userPhotoUrl").toString()}");
      return value.getString("userPhotoUrl").toString();
   },);
   return sharedPreferences;
 }

  Future<String?> getUserName() async { 
    String? sharedPreferences = await SharedPreferences.getInstance().then( (value) {
      print("name: ${value.getString("userName").toString()}");
      return value.getString("userName").toString();
   },);
   return sharedPreferences;
 }




void cheakUserId(BuildContext context)  { 
 
   String? temp =  getUserId().then( (value) {
      
    if(value != null.toString() ) {
      Timer(const Duration(seconds: 2), () {  
           Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Home(),), (route) => false);
      });
     }else {
          Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) => Login(),), (route) => false);
     }

  }, ).toString();
  
 }



}