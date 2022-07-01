import 'package:flutter/material.dart';

class SportCard extends StatelessWidget {
  bool isFavorite;
  String title;
  String img;
   SportCard({Key? key, this.isFavorite=false,this.title="",required this.img}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130,
      color: Colors.black,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(6.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title,style: TextStyle(color: Colors.white,fontSize: 15),),
                IconButton(onPressed: (){}, icon:

                Icon(Icons.favorite_border,color: Colors.pink.withOpacity(0.5),))
              ],
            ),
          ),
          Image.network(img,
          height: 110,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.fill,
          )
        ],
      ),
    );
  }
}
