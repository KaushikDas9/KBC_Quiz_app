import 'package:flutter/material.dart';

class LeaderBoard { 

Widget ranking(int index) {
  return Column(
    children: [
      ListTile(leading: Text("#${index+1}"),title: Row(children: [CircleAvatar(), Padding(padding: EdgeInsets.only(left: 10), child: Text("Name Surname")) ]), trailing: Text("Rs:200000"), ),
      Divider(color: Colors.black,thickness: .05,)
    ],
  );
 }
}