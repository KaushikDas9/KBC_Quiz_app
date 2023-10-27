import 'package:flutter/material.dart';

class WinScreen extends StatefulWidget {
  const WinScreen({super.key});

  @override
  State<WinScreen> createState() => _WinScreenState();
}

class _WinScreenState extends State<WinScreen> {
  
  @override
  Widget build(BuildContext context) {
      double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(body: Stack( children: [Container(width: width,  child:Image.asset("assets/image/Blur_KBC_Logo.png", fit: BoxFit.cover,) ,) , Container(width: width ,  child: Column(mainAxisAlignment: MainAxisAlignment.center,crossAxisAlignment: CrossAxisAlignment.center, children: [Text("Congratulation!" , style: TextStyle(fontSize: 27, color: Colors.white ),) ,Text("YOUR ANSWERE IS CORRECT " , style: TextStyle(fontSize: 10 , fontWeight: FontWeight.bold , color:Colors.white),) , Text("You won" , style: TextStyle(fontSize: 15 , color: Colors.white ),), Text("RS:5,04,000 " , style: TextStyle(fontSize: 25, color: Colors.white),), Container(padding: EdgeInsets.only(top: height * .04), width: width * .9, child: Image.asset("assets/image/State bank cheque.webp" , ))   ],))]),);
  }
}