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

}