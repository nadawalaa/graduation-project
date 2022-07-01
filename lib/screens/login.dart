import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gym_test/components/myBtn.dart';
import 'package:flutter_gym_test/components/myTxtField.dart';
import 'package:flutter_gym_test/components/qLine.dart';
import 'package:flutter_gym_test/screens/homePage.dart';
import 'package:flutter_gym_test/screens/signUp.dart';

class Login extends StatelessWidget {
  Login({Key? key}) : super(key: key);
  var formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20.0),
        child: SingleChildScrollView(
          child: Form(
            key: formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 70.0,
                ),
                Text(
                  'Login',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 60.0,
                ),
                MyTextField(
                    validateText: 'mail must be valid',
                    hintTxt: 'example@gmail.com',
                    txt: 'Email'),
                SizedBox(
                  height: 40.0,
                ),
                MyTextField(
                    validateText: 'password must be valid',
                    hintTxt: '**************',
                    txt: 'Password'),
                SizedBox(
                  height: 170,
                ),
                MyButton(
                  textTitle: 'Log In',
                  press: () {
                    if (formKey.currentState!.validate()) {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => HomeScreen()));
                    }
                  },
                ),
                SizedBox(
                  height: 20.0,
                ),
                QLine(
                    txt: "Don't have an account ?",
                    btnTxt: 'Register Now',
                    fun: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => SignUp()));
                    })
              ],
            ),
          ),
        ),
      ),
    );
  }
}
