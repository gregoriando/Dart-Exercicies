import 'dart:io';

void main() {
  print("Digite uma palavra para contar os caracteres");
  String character = stdin.readLineSync()!.toLowerCase();
  print(
    "O número de caracteres da palavra $character é: ${charactercounter(character)}",
  );
}

int charactercounter(String character) {
  int count = 0;
  for (int i = 0; i <= character.length - 1; i++) {
    count++;
  }
  return count;
}
