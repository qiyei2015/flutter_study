import 'package:flutter/material.dart';

/// Flutter布局示例 https://flutter.io/docs/development/ui/layout

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  var text =  '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''';

  @override
  Widget build(BuildContext context) {
    Widget titleSection = Container(
      padding: EdgeInsets.all(32.0),
      child: Row(
        //3个child 水平排列
        children: <Widget>[
          //占满剩余空间
          Expanded(
            // 2 个child竖直排列
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Text(
                    "Oeschinen Lake Campground",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                Text(
                  "Kandersteg, Switzerland",
                  style: TextStyle(color: Colors.grey[500]),
                )
              ],
            ),
          ),

          Icon(
            Icons.star,
            color: Colors.red[500],
          ),

          Text("41"),
        ],
      ),
    );

    Widget buttonSection = Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          _buildButtonColumn(context, Icons.call, "Call"),
          _buildButtonColumn(context, Icons.near_me, "Route"),
          _buildButtonColumn(context, Icons.share, "Share"),
        ],
      ),
    );

    Widget textSection = Container(
      padding: EdgeInsets.all(32.0),
      child: Text(
        text,
        softWrap: true,
      ),
    );

    // TODO: implement build
    return MaterialApp(
      title: "Flutter Layout Demo",
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Flutter Layout Demo"),
        ),
        body: ListView(
          children: <Widget>[
            Image.asset(
              "assets/images/lake.jpg",
              height: 240.0,
              fit: BoxFit.cover,
            ),
            titleSection,
            buttonSection,
            textSection,

          ],
        ),
      ),
    );
  }

  /// 构建button
  Column _buildButtonColumn(BuildContext context, IconData icon, String label) {
    Color color = Theme.of(context).primaryColor;

    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      //列布局
      children: <Widget>[
        Icon(
          icon,
          color: color,
        ),
        Container(
          margin: EdgeInsets.only(top: 8.0),
          child: Text(
            label,
            style: TextStyle(
              fontSize: 12.0,
              fontWeight: FontWeight.w400,
              color: color,
            ),
          ),
        )
      ],
    );
  }
}

class MyApp2 extends StatelessWidget{

  var text =  '''
Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese Alps. Situated 1,578 meters above sea level, it is one of the larger Alpine Lakes. A gondola ride from Kandersteg, followed by a half-hour walk through pastures and pine forest, leads you to the lake, which warms to 20 degrees Celsius in the summer. Activities enjoyed here include rowing, and riding the summer toboggan run.
        ''';

  @override
  Widget build(BuildContext context) {

    // TODO: implement build
    return Container(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
          Text("hello",textDirection: TextDirection.ltr,)
        ],
      )
    );
  }

}