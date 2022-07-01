import 'package:flutter/material.dart';
class HomeThinCard extends StatelessWidget {
   HomeThinCard({Key? key, required this.icon, required this.text}) : super(key: key);
String? text;
IconData? icon;
  @override
  Widget build(BuildContext context) {
    return Stack(
        alignment: AlignmentDirectional.center,
        children: [
          Container(
            height: 65,
            width: 370,
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(20)),
              color: Colors.white,
            ),
          ),
          Row(

            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(text!, style: TextStyle(color: Colors.black, fontSize: 25),),
              Icon(icon!, color: Colors.black,size: 30,),
            ],
          )
        ]
    );
  }
}
