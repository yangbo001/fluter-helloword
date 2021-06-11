class Animal {
  String? name;
  num? weight;

  /****
   * 1������ģʽ
   * Animal(name: "dog", weight: null)
   * */
  /* Animal({String? name, num? weight}) {
    this.name = name;
    this.weight = weight;
    assert(weight != null);
  }*/

  /****
   * 2���ڷ�����֮ǰ��ֵ���������ֵ���
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
   * 3���﷨����д���ù��췽ʽ���Ȳ�����
   * Animal(name: "dog", weight: null)
   */
  Animal({this.name, this.weight}) : assert(name != null) {
    print("animal-start-init:name->${this.name}; weight->${this.weight}");
  }

  /****
   * 4���﷨����д���ù��췽ʽ���������
   * Animal("dog", null)
   */
/* Animal(this.name, this.weight) : assert(name != null) {
    print("animal-start-init:name->${this.name}; weight->${this.weight}");
  }*/
  /****
   * 5�����캯��������
   * Animal("dog", null)
   */
  Animal.defaults({this.name, this.weight = 20}) : assert(name != null) {
    print("animal-start-init:name->${this.name}; weight->${this.weight}");
  }

  /****
   * 5�����캯���ض���
   * a���������ܼ�this
   * b�����ܼӷ�����
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
