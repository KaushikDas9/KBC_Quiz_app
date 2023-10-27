import 'package:flutter/material.dart';
import 'package:kbc_quiz_app/customWidget/ProfilePageLeaderBoard.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
    
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.purple.shade500,
        title: Text("Profile"),
        centerTitle: true,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.share)),
          IconButton(onPressed: () {}, icon: Icon(Icons.person_add))
        ],
      ),
      body: Stack(children: [
        Container(
          height: height,
          width: width,
          color: Colors.white,
        ),
        Column(
          children: [
            Container(
              width: width,
              height: height * .36,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Stack(children: [
                      SizedBox(
                        width: width * .26,
                        height: height * .14,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(80),
                          child: Image.asset(
                              "assets/image/Kaun_Banega_Crorepati_logo.webp"),
                        ),
                      ),
                      Positioned(
                          bottom: 0,
                          right: 0,
                          child: Container(
                              height: 30,
                              width: 30,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color: Colors.white),
                              child: InkWell(
                                  onTap: () {
                                    print("Profile chage button");
                                  },
                                  child: Icon(Icons.edit_rounded))))
                    ]),
                    Padding(
                      padding: const EdgeInsets.only( top: 10),
                      child: Text("Kaushik Das" , style: TextStyle(fontSize: 18,color: Colors.white),),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: height * .02),
                        child: Divider(
                          color: Colors.black,
                          thickness: .1,
                        )),
                        Padding(
                          padding: const EdgeInsets.only(top: 5),
                          child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [Column(children: [Text("45" , style: TextStyle(fontSize: 25,color: Colors.white ,fontWeight: FontWeight.w400  ),),Text("Level" ,style: TextStyle(fontSize: 20,color: Colors.white  ),)],) ,Column(children: [Text("#345",style: TextStyle(fontSize: 25,  color: Colors.white , fontWeight: FontWeight.w400),),Text("Rank",style: TextStyle(fontSize: 20,color: Colors.white  ),)],)]),
                        ), 
                  ]),
              decoration: BoxDecoration(borderRadius: BorderRadius.only(bottomLeft: Radius.circular(15),bottomRight: Radius.circular(15) ) ,color: Colors.purple.shade500),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10,bottom: 10),
              child: Text("Leaderboard",style: TextStyle( fontSize: 18 , ), ),
            ),

            Container(
              height: height * .467,
              child: ListView.builder(itemCount: 10, itemBuilder: (context, index) {
                return LeaderBoard().ranking(index);
              },),
            )
          ],
        )
      ]),
    );
  }
}
