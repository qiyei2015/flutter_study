import 'package:flutter/material.dart';
import 'package:flutter_study/test/widget/Container_Demo.dart';
import 'package:flutter_study/test/widget/Image_Demo.dart';

void main() => runApp(MyApp2());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("测试Demo"),
          centerTitle: true,
        ),
        body: MyContainer(),
        backgroundColor: Colors.grey,
    ));
  }
}


class MyApp2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: CustomContainer(),
    );
  }
}