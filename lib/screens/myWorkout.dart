import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
class Myworkout extends StatelessWidget {
  const Myworkout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
        title: const Text('My Favorite Exercise '),
    backgroundColor: Colors.teal,
    ),
      body:
      Center
        ( child:
      Text('you can add your favorite workout list click on + icon and select your fav workout',
          style: TextStyle(fontSize: 22, )
      ),


      ) ,
      floatingActionButton: FloatingActionButton(backgroundColor: Colors.teal,
        onPressed:(){
        //Navigator.push(context, MaterialPageRoute(builder:(context)=>const Home()));
        },
        child:Icon(Icons.add),

      ),
      );

}
}
