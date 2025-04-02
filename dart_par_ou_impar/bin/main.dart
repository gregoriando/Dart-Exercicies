import 'dart:io';

void main() {
  print("Digite um número para verificar se ele é par ou impar");
  int number = int.parse(stdin.readLineSync()!);

  if (number % 2 == 0) {
    print("O número $number é par");
  } else {
    print("O número $number é impar");
  }
}
