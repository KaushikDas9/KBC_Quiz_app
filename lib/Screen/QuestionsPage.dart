import 'package:flutter/material.dart';
import 'package:kbc_quiz_app/customWidget/QuesPageDrawer.dart';
import 'package:kbc_quiz_app/customWidget/QuestionPage.dart';
class QuestionPage extends StatefulWidget {
  const QuestionPage({super.key});

  @override
  State<QuestionPage> createState() => _QuestionPageState();
}

class _QuestionPageState extends State<QuestionPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        title: Text("25000"),
        centerTitle: true,
      ),
      drawer: QuestionPageCustomDrawer(),
      body: Container(width: width,height: height, decoration: BoxDecoration(image: DecorationImage(image: AssetImage("assets/image/Blur_KBC_Logo.png") ,fit: BoxFit.cover)), 
      child: Column(crossAxisAlignment: CrossAxisAlignment.center,mainAxisAlignment: MainAxisAlignment.center, children: [Container( width: width*.2 ,height: height*.1, color:Colors.amber,child: Stack( children:[ Center( child: SizedBox(width: width*.18 ,height: height*.09,  child: CircularProgressIndicator( backgroundColor: Colors.purple ,color: Colors.green, strokeWidth: 9))), Center(child: Text("46" ,style: TextStyle(fontSize: 25 , fontWeight:FontWeight.bold), ),)]), )
       , Padding(padding: EdgeInsets.only(top: height * .05 , left: width * .05 , right: width * .05 ,bottom: height * .05 ), child: Container(padding: EdgeInsets.only(left: 20,top: 10, bottom: 10, right: 20), width: width , decoration: BoxDecoration(borderRadius: BorderRadius.circular(10) , color: Colors.white), child: Text("Qjabsdjkfbjksanbfkjsnfkjsnakljfnaskjlbnfvkjasbnfjksabnkjjkasbndcjksandkfjn"))) ,
       QuestionPageWidget().questionOptionButton(context, Option: "A: one" , bgColor: Colors.yellow, isCorrect: true),
       QuestionPageWidget().questionOptionButton(context , Option: "B: two" , bgColor: Colors.red, isCorrect: false ),
       QuestionPageWidget().questionOptionButton(context, Option: "C: three" ,bgColor:  Colors.green, isCorrect: false),
       QuestionPageWidget().questionOptionButton(context ,Option: "D: four" , bgColor: Colors.grey, isCorrect: false),
        Container(margin: EdgeInsets.only(right: width *.1), width: width ,height: height * .1, alignment: Alignment.bottomRight, child: ElevatedButton(onPressed: (){ }  , child: Text("Quit Game"))),
         ],  ), ),
      
    );
  }
}
