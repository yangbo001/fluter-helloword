import 'dart:ffi';

void main() {
  func("hello", true, 11);
  func1(false, 11, null);
  func2("ddddd", hidden: true, bold: null);

  var linkFunc = LinkFunc();
  linkFunc
    ..func1()
    ..func3()
    ..func2(array: [1, 3, 2, 4]);
}

void func(String s, bool b, num n) {
  print("$s $b $n ");
}

/// ************中括号和花括号的参数都只能放在方法参数的最后，非空必须指定默认值*******************/
//中括号的参数只能倒叙缺失，不能指定
void func1(bool b, num n, [String? s1, String s2 = "2222"]) {
  print("${s1} $s2 $b $n ");
}

// 花括号的参数灵活可指定
void func2(String s, {String? bold, bool hidden = false}) {
  print("$s  $bold $hidden");
}

class LinkFunc {
  final list = const [1, 2, 3];

  void func1() {
    // list = [1, 2];
    list.forEach((element) {
      print("the value $element");
    });
    list.forEach((elem) => print("the value $elem"));
  }

  void func2({List<num> array = const [1, 2]}) {
    print("func2");
    array.add(11);
    array.forEach((elem) => print("the value $elem"));
  }

  void func3() {
    print("func3");
  }
}
