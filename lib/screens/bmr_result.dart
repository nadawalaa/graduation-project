import 'dart:ui';

import 'package:flutter/material.dart';
class BMR_ResultScreen extends StatelessWidget {

 final int bmr;
 final int age;
 final bool ismale;
 BMR_ResultScreen(
 {
   required this.bmr,
   required this.age,
   required this.ismale,
});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('BMR Result'),
      ),
      body: Center(
        child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 50,
                  color: Colors.teal[50],
                  child: Text(
                      'Your Calories Intake Is:',
                      style:TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                ),
                ),
                SizedBox(height: 20,),
                Container(
                  height: 50,
                  color: Colors.teal[100],
                    child: Text(
                      ' $bmr Calories',
                      style: TextStyle(fontSize: 30.0,
                          fontWeight: FontWeight.bold),
                    )
                )
              ],
            ),
          ),
    );
  }
}


