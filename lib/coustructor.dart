class Animal {
  String? name;
  num? weight;

//----------- ���췽ʽ1
//   Animal({String? name, num? weight}) {
//     this.name = name;
//     this.weight = weight;
//     assert(weight != null);
//   }

//----------- ���췽ʽ2
  Animal({String? name, num? weight})
      : this.name = name,
        this.weight = weight,
        assert(name != null),
        assert(weight != null) {
    print("animal-start-init");
  }
//----------- ���췽ʽ3
/*Animal(this.a, this.b);*/
}

void main() {
  var animal = Animal(name: "dog",weight: 12);
  print("the animal: name->${animal.name}  weight->${animal.weight}");
}
