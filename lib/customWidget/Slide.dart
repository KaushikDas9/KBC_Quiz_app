import 'package:flutter/material.dart';
import 'package:scroll_snap_list/scroll_snap_list.dart';

class Slide { 

  List dummy = [1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9,1,2,3,4,5,6,7,8,9];
 
  Widget myHorizontalSlide() { 
    return  ScrollSnapList(
    onItemFocus: (p0) {
        debugPrint("$p0");
    },
    itemSize: 150,
    itemCount: dummy.length,
    reverse: true,
    dynamicItemSize: true,
    itemBuilder: (p0, p1) {
      return Card(child: Image.asset("assets/image/NoImageFound.png" , fit: BoxFit.cover),);
    },
  );
  }

  Widget inbuildHorizontalSlide() { 
    return ListView.builder(  itemBuilder: (context, index) {
        return InkWell(
          onTap: () {
            print(index.toString());
          },
          child: Card( elevation: 5 , child: Column(children: [
            Container(height: 140, child: Image.asset("assets/image/NoImageFound.png", fit: BoxFit.cover, )),
            Text(dummy[index].toString() , style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),
          ]),),
        );
    }, 
    itemCount: dummy.length,scrollDirection: Axis.horizontal,shrinkWrap: false,
    );
  }
}