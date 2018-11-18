import 'package:flutter/material.dart';
import 'package:flutter_study/test/widget/Container_Demo.dart';
import 'package:flutter_study/test/widget/FittedBox_AspectRatio_ConstrainedBox_Demo.dart';
import 'package:flutter_study/test/widget/Image_Demo.dart';
import 'package:flutter_study/test/widget/Row_Column_Demo.dart';
import 'package:flutter_study/test/widget/Stack_IndexedStack_GridView_Demo.dart';

void main() => runApp(MyApp());

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
      theme: ThemeData(
        textTheme: TextTheme(
          headline: TextStyle(
            color: Colors.red,
            fontSize: 30.0,
          )
        )
      ),
      home:Scaffold(
        appBar: AppBar(
          title: Text("Widget Demo"),
          centerTitle: true,
        ),
        body: MyGridView(),
      ),
    );
  }
}