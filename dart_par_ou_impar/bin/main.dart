import 'dart:io';
import 'package:dart_par_ou_impar/even_odd.dart';

void main() {
  print("Digite um número para verificar se ele é par ou impar");
  int number = int.parse(stdin.readLineSync()!);
  EvenOdd evenOdd = EvenOdd(number: number);

  CheckEvenOrOdd verify = evenOdd.checkParaty();
  print(verify.message);
  print(evenOdd.isEven());
  print(evenOdd.isOdd());
}
