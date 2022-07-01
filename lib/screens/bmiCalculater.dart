import 'dart:math';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Bmicalculater extends StatefulWidget {

  @override
  State<Bmicalculater> createState() => _BmicalculaterState();
}

class _BmicalculaterState extends State<Bmicalculater> {

   double? height ;
   double? weight ;
   double? result;


  final TextEditingController _heightController = TextEditingController();
  final TextEditingController _weightController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('BMI Calculater'),),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Container(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  TextField(onChanged: (value){
                    height = double.parse(value);
                    },
                    keyboardType:TextInputType.number ,
                    decoration:
                    InputDecoration(labelText: 'height in cm ',
                        icon: Icon(Icons.height)),
                  ),
                  const SizedBox(height: 20),
                  TextField(onChanged: (value){
                    weight = double.parse(value);
                    },
                    keyboardType:TextInputType.number,
                    decoration:
                    InputDecoration(labelText: 'weight in kg ',
                        icon: Icon(Icons.line_weight)),
                  ),
                  SizedBox(height: 25),
                  Container(
                    width: double.infinity,
                    color: Colors.teal[500],
                    child: MaterialButton(onPressed: (){
                      double result = weight! / pow(height!/100, 2);
                      setState(() {
                        if (height == null || height! <= 0 || weight == null || weight! <= 0) {
                          print( "Your height and weigh must be positive numbers");}
                        else {

                          if (result <= 18.5) {
                            print("You are underweight")  ;
                          } else if (result <= 24.9 && result >18.5) {
                            print('You body is fine') ;
                          } else if (result <= 29.9 && result >25) {
                            print('You are overweight') ;
                          } else {
                            print('You are obese') ;
                          }
                        }
                        print(result.round());
                      });
                    },
                      height: 70.0,
                      child: Text('Calculate',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 20.0,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: 40,),
                 Text("Result:$result",style: TextStyle(fontSize: 20),),

                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}



