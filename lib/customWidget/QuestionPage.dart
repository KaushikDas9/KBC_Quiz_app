import 'package:flutter/material.dart';
import 'package:kbc_quiz_app/Screen/LostScreenPage.dart';
import 'package:kbc_quiz_app/Screen/WinScreenPage.dart';

class QuestionPageWidget { 

  Widget questionOptionButton ( BuildContext context , {String Option="A : dummy" ,Color bgColor=Colors.deepPurple , required bool isCorrect  } ) { 
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Padding(
      padding: const EdgeInsets.only(top: 5),
      child: ElevatedButton(onPressed: (){ isCorrect ? Navigator.push(context, MaterialPageRoute(builder: (context) => WinScreen())) : Navigator.push(context, MaterialPageRoute(builder: (context) => LostScreen(),)); } , child: Text(Option) , style: ElevatedButton.styleFrom(maximumSize: Size(width*.8, height * .5) ,shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(30),)  ,fixedSize: Size(width, height * .05) ,backgroundColor: bgColor ,),),
    );
  }
}