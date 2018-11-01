import 'package:flutter/material.dart';

class MyStack extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Stack(
      //对齐方式
      alignment: Alignment(0.6, 0.6),
      children: <Widget>[
        //原型头像
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/pic.jpg"),
          //半径
          radius: 100.0,
        ),

        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            "Mia B",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

class MyIndexedStack extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return IndexedStack(
      index: 1,
      //对齐方式
      alignment: Alignment(0.6, 0.6),
      children: <Widget>[
        //原型头像
        CircleAvatar(
          backgroundImage: AssetImage("assets/images/pic.jpg"),
          //半径
          radius: 100.0,
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.blue,
          ),
          child: Text(
            "Mia B",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
        Container(
          decoration: BoxDecoration(
            color: Colors.red,
          ),
          child: Text(
            "Mia A",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}


class MyGridView extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GridView.count(
        crossAxisCount: 2,
        children: List.generate(100, (index){
          return Center(
            child: Text(
              "item $index",
              style: Theme.of(context).textTheme.headline,
            ),
          );
        }),
      );
  }
}