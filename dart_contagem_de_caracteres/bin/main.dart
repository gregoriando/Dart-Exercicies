import 'dart:io';

void main() {
  print("Digite uma palavra para contar os caracteres");
  String character = stdin.readLineSync()!.toLowerCase();
  charactercounter(character);
}

void charactercounter(String character) {
  int count = 0;
  for (int i = 0; i <= character.length - 1; i++) {
    count++;
  }
  print("O número de caracteres da palavra $character é: $count");
}
