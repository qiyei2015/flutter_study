import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
      title: "My App",
      home: TutorialHome(),
    ));

class MyScaffold extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          MyAppBar(
            title: Text(
              "Example Title",
              style: Theme.of(context).primaryTextTheme.title,
            ),
          ),
          Expanded(
            child: Center(
              child: Text("内容"),
            ),
          ),
        ],
      ),
    );
  }
}

class MyAppBar extends StatelessWidget {
  final Widget title;

  MyAppBar({this.title});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Container(
      //高56
      height: 56.0,
      margin: EdgeInsets.symmetric(vertical: 0.0),
      padding: EdgeInsets.symmetric(horizontal: 8.0),
      //装饰器
      decoration: BoxDecoration(color: Colors.blue[500]),
      //水平布局
      child: Row(
        children: <Widget>[
          IconButton(
            icon: Icon(Icons.menu),
            tooltip: "导航按钮",
            //禁用按钮
            onPressed: null,
          ),
          Expanded(
            child: title,
          ),
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "搜索",
            onPressed: null,
          ),
        ],
      ),
    );
  }
}

/// 使用原生
class TutorialHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Scaffold是Material中主要的布局组件.
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
            icon: Icon(Icons.menu), tooltip: "导航按钮", onPressed: null),
        title: Text("Example Title"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            tooltip: "搜索按钮",
            onPressed: null,
          ),
          Counter(),
        ],
      ),
      body: Center(
        child: Text("内容"),
      ),
      floatingActionButton: FloatingActionButton(
          tooltip: "添加", child: Icon(Icons.add), onPressed: null),
    );
  }
}

/// 自定义按钮
class MyButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        print("你点击了该按钮");
      },
      child: Container(
        height: 36.0,
        padding: EdgeInsets.all(8.0),
        margin: EdgeInsets.symmetric(horizontal: 8.0),
        decoration: BoxDecoration(
          //原型按钮
          borderRadius: BorderRadius.circular(5.0),
          color: Colors.lightGreen[500],
        ),
        child: Center(
          child: Text("Engage"),
        ),
      ),
    );
  }
}

/// 自定义计数器
class Counter extends StatefulWidget {

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _CounterState2();
  }
}

class _CounterState extends State<Counter>{
  //私有变量
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        RaisedButton(
          onPressed: _increment,
          child: Text("增加"),
        ),
        Text("计数:$_count"),
        RaisedButton(
          onPressed: _reduce,
          child: Text("减少"),
        )
      ],
    );
  }

  /// 增加计数
  void _increment(){
    setState(() {
      _count++;
    });
  }

  void _reduce(){
    setState(() {
      _count--;
    });
  }
}

/// 显示计数
class CounterDisplay extends StatelessWidget{

  final int count;

  CounterDisplay({this.count});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text("计数:$count");
  }

}

/// 计数增加
class CounterIncrement extends StatelessWidget{

  final VoidCallback onPressed;

  CounterIncrement({this.onPressed});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return RaisedButton(
      onPressed: onPressed,
      child: Text("增加"),
    );
  }
}

class _CounterState2 extends State<Counter>{
  //私有变量
  int _count = 0;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        CounterIncrement(onPressed: _increment,),
        CounterDisplay(count: _count,),
      ],
    );
  }

  /// 增加计数
  void _increment(){
    setState(() {
      _count++;
    });
  }

  void _reduce(){
    setState(() {
      _count--;
    });
  }
}


