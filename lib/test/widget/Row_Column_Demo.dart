import 'package:flutter/material.dart';

class MyRow extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    // TODO: implement build

    return Container(
      height: 150.0,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Expanded(
            child: Container(
              color: Colors.red,
              padding: EdgeInsets.all(5.0),
            ),
            flex: 1,
          ),

          Expanded(
            child: Container(
              color: Colors.green,
              padding: EdgeInsets.all(5.0),
            ),
            flex: 2,
          ),

          Expanded(
            child: Container(
              color: Colors.blue,
              padding: EdgeInsets.all(5.0),
            ),
            flex: 1,
          ),
        ],
      ),
    );
  }
}