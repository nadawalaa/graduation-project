// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
class HomeCards extends StatelessWidget {
   HomeCards({Key? key, required this.text2,required this.imageUrl, required this.text1 , required this.icon}) : super(key: key);
  String? imageUrl;
  String? text1;
  IconData? icon;
  String? text2;

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 175,
      width: 175,
      child:  Container(
        padding: EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(text1!, style: TextStyle(fontSize: 16.0, color: Colors.black),),
                Icon(icon!),
              ],
            ),
            Image.asset(imageUrl!, width: 85,height: 85,),
            Text(text2!, style: TextStyle(fontSize: 16.0, color: Colors.black),)
          ],
        ),
      ),
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        color: Colors.white,
      ),);
  }
}
