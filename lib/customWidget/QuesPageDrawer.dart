import 'package:flutter/material.dart';
import 'package:kbc_quiz_app/customWidget/QuesDrawLifeLine.dart';

class QuestionPageCustomDrawer extends StatefulWidget {
  const QuestionPageCustomDrawer({super.key});

  @override
  State<QuestionPageCustomDrawer> createState() => _QuestionPageCustomDrawerState();
}

class _QuestionPageCustomDrawerState extends State<QuestionPageCustomDrawer> {
  @override
  Widget build(BuildContext context) {
     double height = MediaQuery.of(context).size.height; 
     double width = MediaQuery.of(context).size.width;
    return SafeArea(child: Drawer(child: SizedBox(child: Column( children: [Padding(padding: EdgeInsets.only(top: height*.02 ,bottom: height * .02 ), child: Text("LifeLines",style: TextStyle(fontWeight: FontWeight.bold , fontSize: 18),)) ,Row(children: [ QuestionPageDrawerLifeLine().lifeLine(context, lifeLineName: "1St lifeLine"),QuestionPageDrawerLifeLine().lifeLine(context,lifeLineName: "2nd lifeLine"),QuestionPageDrawerLifeLine().lifeLine(context , lifeLineName: "3rd lifeLine"),QuestionPageDrawerLifeLine().lifeLine(context, lifeLineName: "4th lifeLine"),],) ,SizedBox(height: height * .02), Divider(color: Colors.black38) , 
     SingleChildScrollView(
       child: Container(
        height: 520,
         child: ListView.builder(reverse: true ,shrinkWrap: false ,physics:  AlwaysScrollableScrollPhysics(),itemCount:10 ,itemBuilder: (context, index) {
           return ListTile(leading: Text("${index+1}"),title: Text(((5000)*(index+1)).toString()), trailing: IconButton(icon: Icon(Icons.circle), onPressed: (){},),);
         }, ),
       ),
     )
     ],)),));
  }
}