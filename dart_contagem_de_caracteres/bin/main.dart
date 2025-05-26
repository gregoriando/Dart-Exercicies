import 'dart:io';

void main() {
  stdout.writeln('Digite uma palavra para contar os caracteres');
  final character = stdin.readLineSync()!.toLowerCase();
  stdout.writeln(
    'O número de caracteres da palavra $character é: ${charactercounter(character)}',
  );
}

int charactercounter(String character) {
  var count = 0;
  for (var i = 0; i <= character.length - 1; i++) {
    count++;
  }
  return count;
}
