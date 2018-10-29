
import 'package:flutter/material.dart';


class CardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
//        width: 200.0,
//        height: 200.0,
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
                      padding: EdgeInsets.all(20.0),
                    ),
                    //横向布局
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        _getBottomItem(Icons.star, "1000", 20.0),
                        _getBottomItem(Icons.link, "2000", 20.0),
                        _getBottomItem(Icons.subject, "3000", 20.0),
                      ],
                    )
                  ],
                ),
              )
          ),
        )
    );
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
                fontSize: 14.0,
              ),
              //超过显示为...
              overflow: TextOverflow.ellipsis,
              maxLines: 1,
            ),
          ],
        )
    );
  }
}