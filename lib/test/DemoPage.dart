

import 'package:flutter/material.dart';
import 'package:flutter_study/test/CardWidget.dart';


class DemoApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DemoPage(),
    );
  }
}

class DemoPage extends StatefulWidget{

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _DemoPageState();
  }

}


class _DemoPageState extends State<DemoPage>{
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      backgroundColor: Colors.blue,
      appBar: AppBar(
        title: Text("这是测试Demo"),
      ),
      //正式页面
      body: ListView.builder(
        itemBuilder: (context,index){
          return CardWidget();
        },
        itemCount: 20,
      ),
    );
  }
}