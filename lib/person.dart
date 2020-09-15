class Person {
  String name;
  String phoneNumber;

  Person(this.name, this.phoneNumber);
}

List<Person> get generatePerson => List<Person>.generate(30, (index) => Person("Nguyen van $index", "0123$index"));