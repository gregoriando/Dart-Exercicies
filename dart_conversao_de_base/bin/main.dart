import 'dart:io';

void main() {
  print("Digite um número decimal para ser transformado em binário");
  int decimal = int.parse(stdin.readLineSync()!);

  String binary = "";

  for (int i = decimal; i > 0; i ~/= 2) {
    binary = (i % 2).toString() + binary;
  }

  print("O número decimal $decimal corresponda ao número binário: $binary");
}
