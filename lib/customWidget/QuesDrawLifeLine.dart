import 'dart:ffi';

import 'package:flutter/material.dart';

class QuestionPageDrawerLifeLine { 
  Widget lifeLine (BuildContext context ,  {String lifeLineName = "dummy"}) { 
    double height = MediaQuery.of(context).size.height; 
     double width = MediaQuery.of(context).size.width;

    return  Padding(
      padding:  EdgeInsets.only(left: width *.03),
      child: Column(
        children: [
          Card(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30))  ,elevation: 5, child: Container(height: height * .07 ,width: width *.15 ,child: ClipRRect(borderRadius: BorderRadius.circular(30) ,child: Image.asset( "assets/image/Gggole logo.png" ,fit: BoxFit.cover, ))) ,),
        Container(alignment: Alignment.center,width: width *.15,child: Text(lifeLineName.toString())) ],
      ),
    );
  } 
}
//Center(child: Container( height: height * .07 ,width: width *.15, child:Image.asset("assets/image/Gggole logo.png"),))