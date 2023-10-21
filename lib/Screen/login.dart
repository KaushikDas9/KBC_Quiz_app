import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kbc_quiz_app/Services/InternetConnection.dart';
import 'package:kbc_quiz_app/Services/google_auth.dart';
import 'package:internet_connection_checker/internet_connection_checker.dart';
import 'package:overlay_support/overlay_support.dart';
class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
late StreamSubscription subscription;

 @override
  void initState() {
    // TODO: implement initState
   subscription = InternetConnectionChecker().onStatusChange.listen((event) {
    final connected =  ( event == InternetConnectionStatus.connected);
    connected ? showSimpleNotification(Text("Ache re")) : showSimpleNotification(Text("Nai re"));
   });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    subscription.cancel();
  }

  @override
  Widget build(BuildContext context) {
    double width = MediaQuery.of(context).size.width;
    double heigth = MediaQuery.of(context).size.height;
    return Scaffold(
      body: Container(
          width: width,
          color: Colors.amberAccent,
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset("assets/image/Kaun_Banega_Crorepati_logo.webp"),
                Text("Welcome to KBC quiz App" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25),),
                SizedBox(height: heigth * .015,),
                ElevatedButton(onPressed: (){Google_auth().my_sing_in_with_google();}, child: Container(width: width * .5 ,
                  child: Row(
                    children: [
                      Container(width: width *.06, height: heigth * .05,  child: Image.asset("assets/image/Google logo.jpg")),
                      SizedBox(width: width * .02 ,),
                      Text("SingIn With Google" , style:  TextStyle(fontWeight: FontWeight.bold , fontSize: 17),),
                    ],
                  ),
                )),
                SizedBox(height: heigth * .015,),
                Text("By clicking,You agreed with our T&C"),
              ])),
    );
  }
}
