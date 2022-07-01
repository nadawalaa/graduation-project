import 'package:flutter/material.dart';
import 'package:flutter_gym_test/screens/login.dart';
import 'package:animated_splash_screen/animated_splash_screen.dart';
class Splash_Screen extends StatelessWidget {
  const Splash_Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  AnimatedSplashScreen(
        duration: 2500,
        splash: Column(
          children: [
            Image.asset(
              'images/enter.png',
            ),
            SizedBox(height: 25,),
            Text('My Fitness App', style: TextStyle(fontWeight: FontWeight.w400, fontSize: 35, ),)
          ],
        ),
        splashIconSize: 600,
        nextScreen: Login(),
        splashTransition: SplashTransition.slideTransition,
        //pageTransitionType: PageTransitionType.scale,
        backgroundColor: Colors.white);
  }
}
