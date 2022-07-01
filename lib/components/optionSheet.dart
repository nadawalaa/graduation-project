import 'package:flutter/material.dart';

class OptionSheet extends StatelessWidget {
   OptionSheet({Key? key , required this.text, required this.icon}) : super(key: key);
String? text;
IconData? icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 10.0,
        ),
        InkWell(
          child: Row(
            children: [
              SizedBox(width: 15.0,),
              Icon(icon!, color: Colors.teal,size: 40,),
              SizedBox(
                width: 20.0,
              ),
              Text(
               text!,
                style: TextStyle(fontSize: 24),
              )
            ],
          ),
          onTap: (){},
        ),
        Divider(
          color: Colors.grey,
          thickness: 1.0,
        ),
      ],
    );
  }
}
