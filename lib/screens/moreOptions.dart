import 'package:flutter/material.dart';
import 'package:flutter_gym_test/components/optionSheet.dart';
import 'package:flutter_gym_test/screens/bmiCalculater.dart';
import 'package:flutter_gym_test/screens/bmrCalculater.dart';
import 'package:flutter_gym_test/screens/reminder.dart';

class Options extends StatelessWidget {
  const Options({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('More Options'),
        backgroundColor: Colors.teal,
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0,),
          InkWell(child: OptionSheet(text: 'Reminder',icon: Icons.alarm,),onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=> Reminder()));},),
          InkWell(child: OptionSheet(text: 'BMI Calculator',icon: Icons.calculate,),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> Bmicalculater()));},),
          InkWell(child: OptionSheet(text: 'BMR Calculator',icon: Icons.calculate_outlined,),onTap:(){Navigator.push(context,MaterialPageRoute(builder: (context)=> Bmrcalculater()));},),
          OptionSheet(text: 'FaceBook',icon: Icons.facebook,),
          OptionSheet(text: 'Dark Mode',icon: Icons.lightbulb,),
          OptionSheet(text: 'LogOut',icon: Icons.logout,),

        ],
      ),
    );
  }
}
