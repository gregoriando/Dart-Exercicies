import 'dart:io';
import 'package:dart_par_ou_impar/even_odd.dart';

void main() {
  stdout.write('Digite um número para verificar se ele é par ou impar');
  final number = int.parse(stdin.readLineSync()!);
  final evenOdd = EvenOdd(number: number);

  final verify = evenOdd.checkParaty();
  stdout.write(verify.message);
  stdout.write(evenOdd.isEven());
  stdout.write(evenOdd.isOdd());
}
