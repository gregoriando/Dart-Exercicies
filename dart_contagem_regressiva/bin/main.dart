import 'dart:io';

void main() {
  stdout.writeln('Digite um número para a contagem regressiva');
  final number = int.parse(stdin.readLineSync()!);

  for (var i = number; i >= 0; i--) {
    stdout.writeln('Contagem regressiva acontecendo: $i');
  }
}
