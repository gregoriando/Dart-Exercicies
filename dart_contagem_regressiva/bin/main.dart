import 'dart:io';

void main() {
  print("Digite um número para a contagem regressiva");
  int number = int.parse(stdin.readLineSync()!);

  for (int i = number; i >= 0; i--) {
    print("Contagem regressiva acontecendo: $i");
  }
}
