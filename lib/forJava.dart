
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

