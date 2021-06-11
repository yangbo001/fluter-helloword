class Animal {
  String? name;
  num? weight;

  /****
   * 1、正常模式
   * Animal(name: "dog", weight: null)
   * */
  /* Animal({String? name, num? weight}) {
    this.name = name;
    this.weight = weight;
    assert(weight != null);
  }*/

  /****
   * 2、在方法体之前赋值，并可添加值检查
   * Animal(name: "dog", weight: null)
   * */
/*  Animal({String? name, num? weight})
      : this.name = name,
        this.weight = weight,
        assert(name != null),
        assert(weight != null) {
    print("animal-start-init");
  }*/
  /****
   * 3、语法糖缩写（该构造方式可先参数）
   * Animal(name: "dog", weight: null)
   */
  Animal({this.name, this.weight}) : assert(name != null) {
    print("animal-start-init:name->${this.name}; weight->${this.weight}");
  }

  /****
   * 4、语法糖缩写（该构造方式必填参数）
   * Animal("dog", null)
   */
/* Animal(this.name, this.weight) : assert(name != null) {
    print("animal-start-init:name->${this.name}; weight->${this.weight}");
  }*/
  /****
   * 5、构造函数重命名
   * Animal("dog", null)
   */
  Animal.defaults({this.name, this.weight = 20}) : assert(name != null) {
    print("animal-start-init:name->${this.name}; weight->${this.weight}");
  }

  /****
   * 5、构造函数重定向
   * a、参数不能加this
   * b、不能加方法体
   * Animal("dog", null)
   */
  Animal.redirects({String? n, num? w}) : this(name: n);
}

class Dog extends Animal {
  String food;

  /*Dog({this.food = "bone", String? name, num? weight}) : super(name: name, weight: weight) {
    print("dog-start-init:name->${this.name}; weight->${this.weight};  food->${this.food}");
  }*/
  /* Dog({this.food = "bone", String? name}) : super(name: name) {
    print("dog-start-init:name->${this.name}; weight->${this.weight};  food->${this.food}");
  }*/
  Dog({this.food = "bone", String? name}) : super.defaults(name: name) {
    print("dog-start-init:name->${this.name}; weight->${this.weight};  food->${this.food}");
  }
}

void main() {
  var animal = Animal.redirects(n: "dog", w: null);
  // var animal = Dog(food: "bone", name: "taidi");
}
