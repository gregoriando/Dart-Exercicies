import 'package:dart_imc/person.dart';

void main(List<String> args) {
  Person person = Person(name: "Gregory", weight: 105.0, height: 1.83);

  print(person.imc().toStringAsFixed(2));
  print(person.imcCategory());
}
