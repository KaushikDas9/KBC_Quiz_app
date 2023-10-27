import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class customdrawer extends StatefulWidget {
  const customdrawer({super.key});

  @override
  State<customdrawer> createState() => _customdrawerState();
}

class _customdrawerState extends State<customdrawer> {
  @override
  Widget build(BuildContext context) {
   
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Drawer(
        child: Container(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15 ,  top: 25),
          child: Column( mainAxisAlignment: MainAxisAlignment.start, crossAxisAlignment: CrossAxisAlignment.start, children: [
            Row(mainAxisAlignment: MainAxisAlignment.start,
              children: [ CircleAvatar(), SizedBox( width: width*.05,) , Column( mainAxisAlignment: MainAxisAlignment.center ,children: [
                Text("KAUSHIK DAS" , style: TextStyle(fontWeight: FontWeight.bold , fontSize: 20),),
                Text("Rs : 50000")
              ],) ],
            ) ,
            Padding(
              padding: const EdgeInsets.only(left: 10 , top: 10),
              child: Text("LeaderBoard - 230 th rank ", style: TextStyle( fontWeight: FontWeight.bold , fontSize: 15)),
            ),

            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(children: [Icon(Icons.question_mark_sharp) ,SizedBox( width: width*.05,) , Text("DAILY QUIZ") ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(children: [Icon(Icons.leaderboard) ,SizedBox( width: width*.05,) , Text("Leader Board") ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(children: [Icon(Icons.question_answer_rounded) ,SizedBox( width: width*.05,) , Text("HOW TO USE") ]),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: Row(children: [Icon(Icons.face) ,SizedBox( width: width*.05,) , Text("ABOUT US") ]),
            ),
          ]),
        ),
      ),
    ));
  }
}
