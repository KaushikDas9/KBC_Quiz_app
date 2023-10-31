import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:kbc_quiz_app/Screen/ProfileScreenPage.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:kbc_quiz_app/Screen/login.dart';
import 'package:kbc_quiz_app/Services/firedb.dart';
import 'package:kbc_quiz_app/Services/localdb.dart';

class customdrawer extends StatefulWidget {
  const customdrawer({super.key});

  @override
  State<customdrawer> createState() => _customdrawerState();
}

class _customdrawerState extends State<customdrawer> {
  String? userName="-----";
  String? userPhotoId = "assets/image/No-Image-Found-400x264.png" ;
  String? money="---";
  String? level = "----";
  String? rank = "-----";

  Future getuserDetailsFromLocalDb() async {
    await Localdb().getUserName().then(
      (value) {
        debugPrint("jdnsbjfg");
        userName = value;
      },
    );
    await Localdb().getUserPhotoUrl().then(
      (value) {
        userPhotoId = value;
      },
    );

    await firedb()
        .getUserMoney(level: level, money: money, rank: rank)
        .then((list) {  
          
          money= list[0]; level = list[1]; rank = list[2];
        });

    setState(() {});
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    if (userName == null && userPhotoId == null) {
      print("Call holo");
      getuserDetailsFromLocalDb();
    }
  }

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Drawer(
        child: Container(
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 15, top: 25),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    InkWell(
                        onTap: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => ProfilePage(
                                  userProfilePic: userPhotoId.toString(),
                                  userProfileName: userName.toString(),
                                  userLevel: level,
                                  userRank: rank,

                                ),
                              ));
                        },
                        child: CircleAvatar(
                          backgroundImage: NetworkImage(userPhotoId.toString()),
                        )),
                    SizedBox(
                      width: width * .05,
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          userName.toString(),
                          style: TextStyle(
                              fontWeight: FontWeight.bold, fontSize: 20),
                        ),
                        Text(money.toString())
                      ],
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10, top: 10),
                  child: Text("LeaderBoard - $rank th rank ",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 15)),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(children: [
                    Icon(Icons.question_mark_sharp),
                    SizedBox(
                      width: width * .05,
                    ),
                    Text("DAILY QUIZ")
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(children: [
                    Icon(Icons.leaderboard),
                    SizedBox(
                      width: width * .05,
                    ),
                    Text("Leader Board")
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(children: [
                    Icon(Icons.question_answer_rounded),
                    SizedBox(
                      width: width * .05,
                    ),
                    Text("HOW TO USE")
                  ]),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 30),
                  child: Row(children: [
                    Icon(Icons.face),
                    SizedBox(
                      width: width * .05,
                    ),
                    Text("ABOUT US")
                  ]),
                ),
                InkWell(
                  onTap: () {
                    logout();
                  },
                  child: Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: Row(children: [
                      Icon(Icons.logout_rounded),
                      SizedBox(
                        width: width * .05,
                      ),
                      Text("Log Out")
                    ]),
                  ),
                ),
              ]),
        ),
      ),
    ));
  }

  Future<void> logout() async {
    FirebaseAuth _auth = FirebaseAuth.instance;
    await _auth.signOut().then(
      (value) {
        Localdb().saveUserId(null.toString(), null.toString(), null.toString());
        Navigator.of(context).pushAndRemoveUntil(
            MaterialPageRoute(
              builder: (context) => Login(),
            ),
            (route) => false);
      },
    );
  }
}
