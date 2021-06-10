class Animal {
  String? name;
  num? weight;

//----------- 构造方式1
//   Animal({String? name, num? weight}) {
//     this.name = name;
//     this.weight = weight;
//     assert(weight != null);
//   }

//----------- 构造方式2
  Animal({String? name, num? weight})
      : this.name = name,
        this.weight = weight,
        assert(name != null),
        assert(weight != null) {
    print("animal-start-init");
  }
//----------- 构造方式3
/*Animal(this.a, this.b);*/
}

void main() {
  var animal = Animal(name: "dog",weight: 12);
  print("the animal: name->${animal.name}  weight->${animal.weight}");
}
