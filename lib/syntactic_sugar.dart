void main() {
  nullCheck();
}

void nullCheck() {
  String? value = "initial";
  Obj? obj;
/*====================1、空检测(同kotlin)=================*/
  obj?.toString();

/*====================2、空赋值，非空不赋值（只有当被赋值的变量为 null 时才会赋值给它）=================*/
  // value = null;
  value ??= "new value";
  print("the value:$value");

/*====================3、空条件执行）=================*/
  String? func1() {
    // return "func1 value";
    return null;
  }

  String? func2() {
    return "func2 value";
  }

  var result = func1() ?? func2();
  print("the result:$result");
}

class Obj {}
