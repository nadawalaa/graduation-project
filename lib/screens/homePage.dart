import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_gym_test/components/home_cards.dart';
import 'package:flutter_gym_test/components/home_thin_card.dart';
import 'package:flutter_gym_test/screens/dietPage.dart';
import 'package:flutter_gym_test/screens/moreOptions.dart';
import 'package:flutter_gym_test/screens/myWorkout.dart';
import 'package:flutter_gym_test/screens/reminder.dart';


class HomeScreen extends StatelessWidget {
  HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold
      (

      body: Container(
        height: double.infinity,
        child: Stack(
            children: [
              Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 340,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(40),
                            bottomRight: Radius.circular(40)),
                        color: Colors.teal,
                      ),
                    ),
                    Expanded(
                      child: Container(
                        width: double.infinity,
                        height: 340,
                        decoration: const BoxDecoration(
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(40),
                              bottomRight: Radius.circular(40)),
                         // color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),

              SingleChildScrollView(
                child: Center(
                    child: Column(
                      children: [
                        SizedBox(height: 80,),
                        Stack(
                          children: [
                            Container(
                              width: 370,
                              height: 140,
                              decoration: const BoxDecoration(
                                borderRadius: BorderRadius.all(Radius.circular(20)),
                                color: Colors.white,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 30.0, horizontal: 10.0),
                                child: Row(
                                  children: [
                                    Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        SizedBox(height: 5,),
                                        Text('Hello, User', style: TextStyle(
                                            fontSize: 22,
                                            color: Colors.teal,
                                            fontWeight: FontWeight.w500),),
                                        SizedBox(height: 10,),
                                        Text('Hoping You Enjoy Our App! ',
                                          style: TextStyle(
                                              fontSize: 18, color: Colors.black),),

                                      ],
                                    ),
                                    SizedBox(width: 25.0,),
                                    Container(
                                      height: 100,
                                      width: 100,
                                      decoration: BoxDecoration(
                                        image: DecorationImage(
                                          image: AssetImage('images/photo.jpg'),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 30,),
                       Column(
                         children: [
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               InkWell(
                                 child: HomeCards(
                                   text1: 'Gym',
                                   text2: 'Gym WorkOut',
                                   icon: Icons.fitness_center,
                                   imageUrl: 'images/gym.jpg',
                                 ),
                                 onTap: (){}

                                 ,
                               ),
                               InkWell(
                                 child: HomeCards(
                                   text1: 'Home',
                                   text2: 'WorkOut At Home',
                                   icon: Icons.home,
                                   imageUrl: 'images/home.jpg',
                                 ),
                                 onTap: (){},
                               ),
                             ],
                           ),
                           SizedBox(height: 20,),
                           Row(
                             mainAxisAlignment: MainAxisAlignment.spaceAround,
                             children: [
                               InkWell(
                                 child: HomeCards(
                                   text1: 'Water',
                                   text2: 'Water Intake',
                                   icon: Icons.local_drink_rounded,
                                   imageUrl: 'images/waterr.png',
                                 ),
                                 onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=> const Reminder()));},
                               ),
                               InkWell(
                                 child: HomeCards(
                                   text1: 'Diet',
                                   text2: 'Diet Plans',
                                   icon: Icons.fastfood,
                                   imageUrl: 'images/diet.jpg',
                                 ),
                                 onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=> const dietPage()));},
                               ),

                             ],
                           ),
                           SizedBox(height: 25,),
                           InkWell(child: HomeThinCard(icon: Icons.favorite,text: 'My WorkOut'),onTap: (){Navigator.push(context, MaterialPageRoute(builder: (context)=>const Myworkout()));},),
                           SizedBox(height: 25,),
                           InkWell(child: HomeThinCard(icon:Icons.arrow_forward_ios ,text: 'More Options'),onTap: (){Navigator.push(context, MaterialPageRoute(builder:(context)=>const Options()));},),

                         ],
                       )
                         ],
                    ),
                  ),
              ),

            ],
          ),
        ),
      
    );
   }
  }