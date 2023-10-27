import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kbc_quiz_app/Screen/QuizDetailsPage.dart';
import 'package:kbc_quiz_app/customWidget/Slide.dart';
import 'package:kbc_quiz_app/customWidget/myCustomDrawer.dart';
import 'package:kbc_quiz_app/customWidget/normalWork.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // final GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height ;
  double width = MediaQuery.of(context).size.width ;

    return Scaffold(
      //  key: _drawerKey,
       drawerEdgeDragWidth: MediaQuery.of(context).size.width * .2,
      drawer: const customdrawer(),
      appBar: AppBar(title: Text("Home"),),
      floatingActionButton: FloatingActionButton(onPressed: (){ Navigator.push(context, MaterialPageRoute(builder: (context) => questionsPage(),));} , child: Text("Go"), ),
      body: SafeArea(child: Column(
        children: [
          Center (child: Container(padding: EdgeInsets.only(top:10), width: width , height: height*.25, child: Slide().inbuildHorizontalSlide() )),
          Padding(
            padding: const EdgeInsets.only(top: 30),
            child: NormalWidget().twoBox(context),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 5),
            child: NormalWidget().twoBox(context),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10),
            child: NormalWidget().oneLargeBox(context),
          ),
        ],
      )),
    );
  }
}
