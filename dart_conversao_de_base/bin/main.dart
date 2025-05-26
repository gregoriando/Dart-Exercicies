import 'dart:io';

void main() {
  stdout.writeln('Digite um número decimal para ser transformado em binário');
  final decimal = int.parse(stdin.readLineSync()!);

  var binary = '';

  for (var i = decimal; i > 0; i ~/= 2) {
    binary = (i % 2).toString() + binary;
  }

  stdout.writeln(
    'O número decimal $decimal corresponda ao número binário: $binary',
  );
}
