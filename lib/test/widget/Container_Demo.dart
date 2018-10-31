import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  String _image_url =
      'http://h.hiphotos.baidu.com/zhidao/wh%3D450%2C600/sign=0d023672312ac65c67506e77cec29e27/9f2f070828381f30dea167bbad014c086e06f06c.jpg';

  @override
  Widget build(BuildContext context) {
    // 新的Container布局
    return Container(
      constraints: BoxConstraints.expand(
        height: Theme.of(context).textTheme.display1.fontSize * 1.1 + 200.0,
      ),
      decoration: BoxDecoration(
          //边界
          border: Border.all(width: 2.0, color: Colors.red),
          //边角
          borderRadius: BorderRadius.all(Radius.circular(20.0)),
          //背景
          image: DecorationImage(
            image: NetworkImage(_image_url),
            centerSlice: Rect.fromLTRB(270.0, 180.0, 1360.0, 730.0),
          ),
          color: Colors.lightGreen),
      //padding
      padding: EdgeInsets.all(8.0),
      //对齐方式
      alignment: Alignment.center,
      //内容
      child: Text(
        "Hello World",
        style:
            Theme.of(context).textTheme.display1.copyWith(color: Colors.black),
      ),
      //矩阵变换属性
      transform: Matrix4.rotationZ(0.5),
    );
  }
}

class CustomContainer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("自定义的Container"),
        leading: BackButton(),
      ),
      backgroundColor: Colors.amberAccent,
      body: CustomContainerContent(),
    );
  }
}

class CustomContainerContent extends StatelessWidget {



  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10.0),
      child: Wrap(
        children: <Widget>[
          MyButton(title: Text("按钮1"),onPress: _onPress,disable: false,)
        ],
      ),
    );
  }

  void _onPress(){
    print("点击了按钮1");

  }
}


/// 定义一个Button
class MyButton extends StatefulWidget {
  /// button 的三种状态
  static const defaultBackgroundColor = const Color(0xFF8B5FFE);
  static const defaultActiveBackgroundColor = const Color(0xB38B5FFE);
  static const defaultDisabledBackgroundColor = Colors.grey;

  final Widget title;
  final Color backgroundColor;
  final Color activeColor;
  final Color disableColor;
  final double height;
  final double width;
  final bool disable;

  //点击事件
  final VoidCallback onPress;

  MyButton({
    this.title,
    this.backgroundColor = defaultBackgroundColor,
    this.activeColor = defaultActiveBackgroundColor,
    this.disableColor = defaultDisabledBackgroundColor,
    this.height = 52.0,
    this.width = double.infinity,
    this.disable = false,
    this.onPress});

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyButtonState();
  }
}

class _MyButtonState extends State<MyButton> {
  Color currentColor;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    //此处的widget就是上面的widget
    if (widget.disable) {
      currentColor = widget.disableColor;
    } else {
      currentColor = widget.backgroundColor;
    }
  }

  //销毁时调用
  @override
  void deactivate() {
    // TODO: implement deactivate
    super.deactivate();
    currentColor = widget.backgroundColor;
  }

  @override
  Widget build(BuildContext context) {
    return new GestureDetector(
      onTap: () {
        if (widget.onPress != null && !widget.disable) {
          widget.onPress();
        }
      },

      //按下，输入参数
      onTapDown: (TapDownDetails details) {
        print("x: ${details..toString()}");
        if (!widget.disable) {
          //更新状态
          setState(() {
            currentColor = widget.activeColor;
          });
        }
      },

      //松开
      onTapUp: (TapUpDetails details) {
        if (!widget.disable) {
          //更新状态
          setState(() {
            currentColor = widget.backgroundColor;
          });
        }
      },

      //取消
      onTapCancel: () {
        if (!widget.disable) {
          setState(() {
            currentColor = widget.backgroundColor;
          });
        }
      },

      child: new Container(
        decoration: BoxDecoration(
          color: currentColor,
          borderRadius: BorderRadius.all(Radius.circular(widget.height / 2)),
        ),
        height: widget.height,
        width: widget.width,
        alignment: Alignment.center,
        child: widget.title,
      ),
    );
  }
}
