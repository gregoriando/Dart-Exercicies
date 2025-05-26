import 'dart:io';
import 'package:dart_imc/person.dart';

void main(List<String> args) {
  final person = Person(name: 'Gregory', weight: 105.0, height: 1.83);

  stdout.writeln(person.imc().toStringAsFixed(2));
  stdout.writeln(person.imcCategory());
}
