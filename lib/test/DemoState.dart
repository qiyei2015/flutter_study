
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


class ContainerWidget extends StatelessWidget{

  final String text;

  ContainerWidget({this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      height: 120.0,
      width: 500.0,
      decoration: BoxDecoration(
        //弧度
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
        //颜色
        color: Colors.grey,
        //边框
        border: Border.all(color: Colors.green,width: 1.0)
      ),
//      color: Colors.green,
//      child: Text(text ?? "无状态的Widget",style: TextStyle(color: Colors.black,fontSize: 18.0),),
      //列
      child: Column(
        //主轴起始位置 column是竖直
        mainAxisAlignment: MainAxisAlignment.center,
        //大小
        mainAxisSize: MainAxisSize.min,
        //侧轴 横向
        crossAxisAlignment: CrossAxisAlignment.start,
        //内容
        children: <Widget>[
          //flex表示比例,默认为1
          Expanded(child: Text("111"),flex: 2,),
          Expanded(child: Text("222"),)

        ],
      ),
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