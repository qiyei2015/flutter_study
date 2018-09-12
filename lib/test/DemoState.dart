
import 'dart:async';
import 'package:flutter/material.dart';


/**
 * 无状态的Widget,直接复写build，返回相应的布局
 */
class DemoWidget extends StatelessWidget{

  final String text;

  DemoWidget(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.green,
      child: Text(text ?? "无状态的Widget"),
    );
  }

}


/**
 * 有状态的布局,继承StatefulWidget，创建一个
 */
class DemoStateWidget extends StatefulWidget {

  final String text;


  DemoStateWidget(this.text);

  @override
  State<StatefulWidget> createState() {
    return _DemoStateWidget(text);
  }
}


class _DemoStateWidget extends State<DemoStateWidget> {

  //状态
  String text;
  int value;


  _DemoStateWidget(this.text);

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("_DemoStateWidget initState");
    value = 0;
    Future.delayed(const Duration(seconds: 2),(){
      setState(() {
        text = "数值: ${++value}";
      });
    });
  }

  @override
  void didChangeDependencies() {
    // TODO: implement didChangeDependencies
    super.didChangeDependencies();

    print("_DemoStateWidget didChangeDependencies");
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    print("_DemoStateWidget build");
    return Container(
      child: Text(text ?? "无状态的Widget"),
    );
  }

  @override
  void didUpdateWidget(DemoStateWidget oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
    print("_DemoStateWidget didUpdateWidget");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    print("_DemoStateWidget dispose");
  }

}