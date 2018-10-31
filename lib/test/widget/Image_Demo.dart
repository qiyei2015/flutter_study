import 'package:flutter/material.dart';

class MyImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Center(
        child: Image.asset(
      "assets/images/lake.jpg",
      height: 240.0,
      fit: BoxFit.cover,
    ));
  }
}
