import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Reminder extends StatefulWidget {
  const Reminder({Key? key}) : super(key: key);

  @override
  State<Reminder> createState() => _ReminderState();
}

class _ReminderState extends State<Reminder> {
  @override
  Widget build(BuildContext context) {
    double _value = 0.0;
    return Scaffold(
      body: Stack(children: [
        Column(
          children: [
            Container(
              height: 250,
              width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage('images/water-intake.jpg'),
                ),
              ),
            ),
          ],
        ),
        Center(
          child: Column(children: [
            SizedBox(
              height: 200,
            ),
            Stack(children: [
              Container(
                  height: 100,
                  width: 360,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.all(Radius.circular(20)))),
              Column(
                children: [
                  SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    '${_value.toInt()} /2070 ml',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  Container(
                    width: 355,
                    child: Slider(
                      activeColor: Colors.teal,
                      inactiveColor: Colors.grey,
                      divisions: 100,
                      min: 0.0,
                      max: 100.0,
                      value: _value,
                      onChanged: (value) {
                        setState(() {
                          _value = value;
                        });
                      },
                    ),
                  ),
                ],
              ),
            ]
            ),
            SizedBox(height: 25.0,),
            Row(
              children: [
                SizedBox(width:5.0),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.only(left: 35,right: 20,top: 120,bottom: 20),
                    child:Text('50ml',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                    height: 160,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      image: DecorationImage(
                        image: AssetImage('image/glassofwater.jpg')
                      ),
                      borderRadius:BorderRadius.all(Radius.circular(15)),),
                  ),
                  onTap: (){},
                ),
                SizedBox(width: 10.0,),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.only(left: 35,right: 20,top: 120,bottom: 20),
                    child:Text('50ml',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                    height: 160,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('image/cupofcoffee.png'), ),
                      color: Colors.white,
                      borderRadius:BorderRadius.all(Radius.circular(15)),),
                  ),
                  onTap: (){},
                ),
                SizedBox(width: 10.0,),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.only(left: 35,right: 20,top: 120,bottom: 20),
                    child:Text('50ml',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                    width: 120.0,
                    height: 160,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('image/mug.jpg'),),
                      color: Colors.white,
                      borderRadius:BorderRadius.all(Radius.circular(15)),),
                  ),
                  onTap: (){},
                )
              ],
            ),
            SizedBox(height: 15.0,),
            Row(
              children: [
                SizedBox(width: 5.0,),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.only(left: 35,right: 20,top: 120,bottom: 20),
                    child:Text('50ml',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                    height: 160,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('image/cupofjuice.jpg'),),
                      color: Colors.white,
                      borderRadius:BorderRadius.all(Radius.circular(15)),),
                  ),
                  onTap: (){},
                ),
                SizedBox(width: 10.0,),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.only(left: 35,right: 20,top: 120,bottom: 20),
                    child:Text('50ml',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                    height: 160,
                    width: 120,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('image/juice.png'),),
                      color: Colors.white,
                      borderRadius:BorderRadius.all(Radius.circular(15)),),
                  ),
                  onTap: (){},
                ),
                SizedBox(width: 10.0,),
                InkWell(
                  child: Container(
                    padding: EdgeInsets.only(left: 35,right: 20,top: 120,bottom: 20),
                    child:Text('50ml',style: TextStyle(fontWeight:FontWeight.bold,fontSize: 20),),
                    width: 120.0,
                    height: 160,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage('image/glassofwater.jpg'),),
                      color: Colors.white,
                      borderRadius:BorderRadius.all(Radius.circular(15)),),
                  ),
                  onTap: (){},
                ),

              ],
            ),
            ])
        ),

      ]),
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.teal,onPressed: () {  },
      child: Icon(Icons.add),),
    );
  }
}

