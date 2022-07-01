import 'package:flutter/material.dart';
class dietPage extends StatelessWidget {
  const dietPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Diet Plan'),
        backgroundColor: Colors.teal,
      ),
        body:  GridView.count(
    crossAxisCount: 4,
    children:  List<Widget>.generate(31, (index) {
    return GridTile(
    child:  Card(
    color: Colors.teal[200],
    child:  Center(
    child:  Text('Day ${index+1}'),
    )
    ),
    );
    } )
        )
    );
  }

}