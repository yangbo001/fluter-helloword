void main() {
  Function f = func;
  var map = {
    'obj': Obj(),
    'key': 'value',
  };
  print(map);
  f();
  (map['obj'] as Obj).func();
}

class Obj {
  var key;
  var value = "value";

  void func() {
    print("Obj's key:$key; value:$value");
  }
}

void func({String? v}) {
  print("func invoked");
}
