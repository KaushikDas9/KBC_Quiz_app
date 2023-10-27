// import 'dart:js';

import 'package:flutter/material.dart';

class NormalWidget extends StatelessWidget {
  const NormalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
  //

  Widget twoBox(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        Container(
            height: height * .2,
            width: width * .45,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Card(elevation: 5, child: Text("Rs:500000")))),
        Container(
            height: height * .2,
            width: width * .45,
            child: ClipRRect(
                borderRadius: BorderRadius.circular(10),
                child: Card(elevation: 5, child: Text("Rs:500000"))))
      ],
    );
  }

Widget oneLargeBox(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
      
        Container(
            height: height * .15,
            width: width * .9,
            child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Card(elevation: 5, child: Text("Rs:500000"))))
      ],
    );
  }
}
