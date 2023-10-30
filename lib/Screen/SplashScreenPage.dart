
import 'package:flutter/material.dart';
import 'package:kbc_quiz_app/Services/localdb.dart';


class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  

  @override
  void initState() {
   Localdb().cheakUserId(context);
  }
  @override
  Widget build(BuildContext context) {
    double height  = MediaQuery.of(context).size.height;
    double width  = MediaQuery.of(context).size.width;

    return Scaffold(body: Container(height: height,width: width ,color: Colors.purple, child: Image.asset("assets/image/Kaun_Banega_Crorepati_logo.webp")),);
  }
}