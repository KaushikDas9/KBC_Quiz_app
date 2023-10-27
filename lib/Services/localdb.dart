

import 'package:flutter/material.dart';
import 'package:kbc_quiz_app/Screen/home.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Localdb { 

 Future<bool> saveUserId(String uId) async { 
  final SharedPreferences  sharedPreferences = await SharedPreferences.getInstance();
   return await sharedPreferences.setString("userUid" , uId);
 }

Future<String?> getUserId() async { 
  final SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
   return await sharedPreferences.getString("userUid" );
 }

Future<void> cheakUserId(BuildContext context) async { 
  if(Localdb().getUserId() != "" ) Navigator.of(context).pushAndRemoveUntil ( MaterialPageRoute(builder: (context) => Home(),), (route) => false) ;
 }



}