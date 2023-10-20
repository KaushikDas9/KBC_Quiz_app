import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
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
                Text("Welcome To KBC quiz App" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 25),),
                SizedBox(height: heigth * .015,),
                ElevatedButton(onPressed: (){}, child: Text("Continue With Google")),
                SizedBox(height: heigth * .015,),
                Text("By clicking,You agreed with our T&C")
              ])),
    );
  }
}
