
import 'dart:math';

///定义一个自行车类
class Bicycle{
  int cadence;
  int _speed;
  int gear;

  Bicycle(this.cadence,this.gear);

  //getter方法
  int get speed => _speed;

  @override
  String toString() => "cadence:$cadence speed:$_speed gear:$gear";

}

//矩形
class Rectangle{
  int width;
  int height;
  //原点
  Point origin;

  //构造方法 可选参数
  Rectangle({this.origin = const Point(0, 0),this.width = 0,this.height = 0});

  @override
  String toString() {
    const name = "hello";

    return 'Origin: (${origin.x}, ${origin.y}), width: $width, height: $height';
  }


}