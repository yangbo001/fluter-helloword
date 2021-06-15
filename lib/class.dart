void main() {
  // 创建对象省略 new 关键字
  var animal = Animal();
  // 获取对象类型名称【Animal】<同js typeof；java class.name>
  print(animal.runtimeType);
  animal.value = 11;
  print("${animal.value}  ${animal._value}");
}

class Animal {
  num? _value;

  set value(num? value) {
    _value = value;
  }

  num? get value {
    if (_value == null) {
      return 1;
    } else {
      return _value! + 1;
    }
  }
}
