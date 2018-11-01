import 'package:flutter/material.dart';

class MyFittedBox extends StatelessWidget{
  
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.amberAccent,
      width: 300.0,
      height: 400.0,
      child: FittedBox(
        fit:BoxFit.fitWidth,
        alignment: Alignment.center,
        child: Container(
          color: Colors.red,
          child: Text("FittedBox",
            style: TextStyle(
              color: Colors.blue,
              fontSize: 12.0,
            ),),
        ),
      ),
    );
  }
}

class MyAspectRatio extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      color: Colors.amberAccent,
      height: 200.0,
      child: AspectRatio(
          aspectRatio: 1.5,
          child: Container(
            color: Colors.red,
          ),
      )
    );
  }
}


class MyConstrainedBox extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return ConstrainedBox(
      constraints: BoxConstraints(
        minWidth: 100.0,
        minHeight: 100.0,
        maxHeight: 250.0,
        maxWidth: 300.0
      ),
      child: Container(
        height: 150.0,
        color: Colors.greenAccent,
      ),
    );
  }

}