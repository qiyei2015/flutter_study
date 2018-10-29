import 'dart:async';

import 'package:flutter/material.dart';

/**
 * 无状态的Widget,直接复写build，返回相应的布局
 */
class DemoWidget extends StatelessWidget {
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

class ContainerWidget extends StatelessWidget {
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
          border: Border.all(color: Colors.green, width: 1.0)),
//      color: Colors.green,
//      child: Text(text ?? "无状态的Widget",style: TextStyle(color: Colors.black,fontSize: 18.0),),
      //列
      child: Row(
        //主轴起始位置 column是竖直,row是横轴
        mainAxisAlignment: MainAxisAlignment.center,
        //大小
        mainAxisSize: MainAxisSize.min,
        //侧轴
        crossAxisAlignment: CrossAxisAlignment.center,
        //内容
        children: <Widget>[
          _getBottomItem(Icons.star, "1000",20.0),
          _getBottomItem(Icons.link, "2000",20.0),
          _getBottomItem(Icons.subject, "3000",40.0),
        ],
      ),
    );
  }
}

/**
 * 返回一个居中带图标和文字的Item
 */
Widget _getBottomItem(IconData icon, String text,double iconSize) {
  //充满Row横向的布局
  return Expanded(
      flex: 1,
      child: Row(
        //主轴居中
        mainAxisAlignment: MainAxisAlignment.center,
        //大小按最大显示
        mainAxisSize: MainAxisSize.max,
        //侧轴也居中 即纵向居中
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Icon(
            icon,
            size: iconSize,
            color: Colors.red,
          ),
          //间距
          Padding(
            padding: EdgeInsets.only(left:5.0),
          ),
          Text(
            text,
            style: TextStyle(
              color: Colors.green,
              fontSize: 18.0,
            ),
            //超过显示为...
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
          ),
        ],
      )
  );
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
    Future.delayed(const Duration(seconds: 2), () {
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


class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 200.0,
        height: 100.0,
        color: Colors.grey,
        child: Card(
          //z轴偏移
          elevation: 5.0,
          //增加点击小小郭
          child: FlatButton(
              onPressed: () {
                print("点击了哦");
              },
              child: Padding(
                padding: EdgeInsets.only(
                    left: 0.0, top: 10.0, right: 10.0, bottom: 10.0),
                //纵向布局
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Container(
                      child: Text(
                        "这是一点描述",
                        style: TextStyle(
                            color: Colors.green,
                            fontSize: 16.0
                        ),
                        maxLines: 3,
                        //超过显示...
                        overflow: TextOverflow.ellipsis,
                      ),
                      margin: EdgeInsets.only(top: 6.0, bottom: 2.0),
                      alignment: Alignment.topLeft,
                    ),
                    //空白
                    Padding(
                      padding: EdgeInsets.all(10.0),
                    ),
                    //横向布局
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _getBottomItem(Icons.star, "1000", 20.0),
                        _getBottomItem(Icons.link, "2000", 20.0),
                        _getBottomItem(Icons.subject, "3000", 40.0),
                      ],
                    )
                  ],
                ),
              )
          ),
        )
    );
  }

}