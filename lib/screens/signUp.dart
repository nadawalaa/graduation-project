import 'package:flutter/material.dart';
import 'package:flutter_gym_test/components/myBtn.dart';
import 'package:flutter_gym_test/components/myTxtField.dart';
import 'package:flutter_gym_test/components/qLine.dart';
import 'package:flutter_gym_test/screens/homePage.dart';
import 'package:flutter_gym_test/screens/login.dart';
class SignUp extends StatelessWidget {
   SignUp({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 80.0,),
                Text('Create Account', style: TextStyle(fontSize: 34, fontWeight: FontWeight.bold, ),),
                SizedBox(height: 40.0,),
                MyTextField(validateText: 'mail must be valid', hintTxt: 'example@gmail.com', txt: 'Email'),
                SizedBox(height: 40.0,),
                MyTextField(validateText: 'password must be valid', hintTxt: '**************', txt: 'Password'),
                SizedBox(height: 40.0,),
                MyTextField(validateText: 'password must be valid', hintTxt: '**************', txt: 'Repeat Password'),
                SizedBox(height: 90,),
                MyButton(textTitle: 'Sign Up', press: (){
                  if (formKey.currentState!.validate()) {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => HomeScreen()));
                  }
                },),
                SizedBox(height: 20.0,),
                QLine(txt: "Already have an account ?", btnTxt: 'Sign In', fun: (){ Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Login()));})
              ],
            ),
          ),
        ),
      ),
    );
  }
}
