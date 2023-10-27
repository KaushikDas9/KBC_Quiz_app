import 'package:flutter/material.dart';
import 'package:kbc_quiz_app/Screen/QuestionsPage.dart';

class questionsPage extends StatefulWidget {
  const questionsPage({super.key});

  @override
  State<questionsPage> createState() => _questionsPageState();
}

class _questionsPageState extends State<questionsPage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Container(
      height: height,
      decoration: const BoxDecoration(
        // color:  Colors.deepPurple.shade700,
        image: DecorationImage(image:AssetImage("assets/image/Blur_KBC_Logo.png" ) , fit:BoxFit.cover),
          ),
      child: Scaffold(
          backgroundColor: Colors.transparent,
          appBar: AppBar(
            title: const Text("RS:20,000"),
          ),
          drawer: const Drawer(),
          floatingActionButton: FloatingActionButton(onPressed: (){Navigator.push(context, MaterialPageRoute(builder: (context) => QuestionPage(),));} , child: const Text("Start")),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
          body: SingleChildScrollView(
            child: Column(children: [Container(padding: const EdgeInsets.only(top: 10),child: const Center(child: Text("QUIZ NAME" , style: TextStyle(fontSize: 25 , color: Colors.white), ))) , 
            Container(width: width , height: height *.25, padding: const EdgeInsets.only(top: 10), child: Image.asset("assets/image/NoImageFound.png" , fit: BoxFit.cover,)),
            Container(padding: const EdgeInsets.only(top: 15 , left: 10) ,alignment: Alignment.bottomLeft, child: const Text("Related to - " , style: TextStyle(color: Colors.white),)),
            Row(children: [Padding(padding: const EdgeInsets.only(top: 10 , left: 10 ) , child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5) , color: Colors.white) , child: const Text("Item"),  )) ,  Padding(padding: const EdgeInsets.only(top: 10 , left: 10 ) , child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5) , color: Colors.white) , child: const Text("Item"),  )) , Padding(padding: const EdgeInsets.only(top: 10 , left: 10 ) , child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5) , color: Colors.white) , child: const Text("Item"),  )) , Padding(padding: const EdgeInsets.only(top: 10 , left: 10 ) , child: Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(5) , color: Colors.white) , child: const Text("Item"),  )) ,]),
            Container(padding: const EdgeInsets.only(top: 15 , left: 10) ,alignment: Alignment.bottomLeft, child: const Text("Duration -" , style: TextStyle(color: Colors.white),)),
            Container(padding: const EdgeInsets.only(top: 10 , left: 15), alignment:Alignment.bottomLeft , child: const Text("10 mins" , style: TextStyle(color: Colors.white),)),
            Container(padding: const EdgeInsets.only(top: 10 , left: 15), alignment:Alignment.bottomLeft , child: const Text("About Quiz - " , style: TextStyle(color: Colors.white),)),
            Container(width: width, child: const Text("jasndjfhksdnfksnfjskjfnksankfcmasnkfnvcjksanfk;jvajnsk;nfc") , )                
            ]),
          ),
          ),
    );
  }
}
