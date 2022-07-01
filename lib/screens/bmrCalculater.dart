import 'package:flutter/material.dart';
import 'package:flutter_gym_test/screens/bmr_result.dart';
class Bmrcalculater extends StatefulWidget {

  Bmrcalculater({Key? key}) : super(key: key);

  @override
  State<Bmrcalculater> createState() => _BmrcalculaterState();
}

class _BmrcalculaterState extends State<Bmrcalculater> {
  bool isMale = true;
  double height = 120.0;
  int weight = 30;
  int age = 15;
  double bmr = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.teal,
        title: Text('BMR Calculater'),),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (
                          ){
                        setState(() {
                          isMale =true;
                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.male,
                              size: 100,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Male',
                              style:TextStyle(fontSize: 25.0,fontWeight:FontWeight.bold,),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:isMale ? Colors.lightBlue[400] : Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        setState(() {
                          isMale = false;

                        });
                      },
                      child: Container(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.female,
                              size: 100.0,
                            ),
                            SizedBox(
                              height: 15.0,
                            ),
                            Text(
                              'Female',
                              style:TextStyle(fontSize: 25.0,fontWeight:FontWeight.bold,),
                            ),
                          ],
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color:!isMale ? Colors.pink[200]:Colors.grey[400],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20.0),
              child: Container(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'HEIGHT',
                      style:TextStyle(fontSize: 25.0,fontWeight:FontWeight.bold,),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.baseline,
                      mainAxisAlignment: MainAxisAlignment.center,
                      textBaseline: TextBaseline.alphabetic,
                      children: [
                        Text(
                          '${height.round()}',
                          style:TextStyle(fontSize: 40.0,fontWeight:FontWeight.w900,),
                        ),
                        SizedBox(
                          width: 5.0,
                        ),
                        Text(
                          'CM',
                          style:TextStyle(fontSize: 15.0,fontWeight:FontWeight.bold,),
                        ),
                      ],
                    ),
                    Slider(
                      value:height ,
                      max: 220.0,
                      min: 80.0,
                      onChanged: (value){
                        setState(() {
                          height = value;
                        });
                        print(value.round());
                      },
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.teal[200],
                ),
              ),
            ) ,
          ),
          Expanded(
            child:Padding(
              padding: const EdgeInsets.all(20.0),
              child: Row(
                children: [
                  Expanded(
                    child: Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'AGE',
                            style:TextStyle(fontSize: 25.0,fontWeight:FontWeight.bold,),
                          ),
                          Text(
                            '${age}',
                            style:TextStyle(fontSize: 40.0,fontWeight:FontWeight.w900,),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed:(){
                                setState(() {
                                  age--;
                                });
                              },
                                child: Icon(
                                  Icons.remove,
                                ),
                                mini: true,

                              ),
                              FloatingActionButton(onPressed:(){
                                setState(() {
                                  age++;
                                });
                              },
                                child: Icon(
                                  Icons.add,
                                ),
                                mini: true,

                              ),
                            ],
                          ),

                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.teal[200],

                      ),
                    ),
                  ),
                  SizedBox(
                    width: 20.0,
                  ),
                  Expanded(
                    child:
                    Container(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            'Weight',
                            style:TextStyle(fontSize: 25.0,fontWeight:FontWeight.bold,),
                          ),
                          Text(
                            '${weight}',
                            style:TextStyle(fontSize: 40.0,fontWeight:FontWeight.w900,),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              FloatingActionButton(onPressed:(){
                                setState(() {
                                  weight--;
                                });
                              },
                                child: Icon(
                                  Icons.remove,
                                ),
                                mini: true,

                              ),
                              FloatingActionButton(onPressed:(){
                                setState(() {
                                  weight++;
                                });
                              },
                                child: Icon(
                                  Icons.add,
                                ),
                                mini: true,

                              ),
                            ],
                          ),

                        ],
                      ),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10.0),
                        color: Colors.teal[200],

                      ),
                    ),) ,
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            color: Colors.teal,
            child: MaterialButton(onPressed: (){
              setState((

                  ) {
                if( isMale == true){
                  bmr = 88.362 + (13.397 * weight) +(4.799 * height) - (5.677 * age);

                }
                else{
                  bmr = 477.593 + (9.247 * weight) + (3.098 *height) - (4.330* age);

                }
              });
              print(bmr.round());
              Navigator.push(context, MaterialPageRoute(builder: (context)=> BMR_ResultScreen(
                age: age,ismale: isMale,bmr: bmr.round(),
              ),),);
            },
              height: 50.0,
              child: Text('Calculate',
                style: TextStyle(
                  fontSize: 15.0,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
