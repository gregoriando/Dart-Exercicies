import 'dart:io';

import 'package:dart_lista_binaria/int_extesion.dart';

void main() {
  const binary = [1, 3, 5, 7, 9, 11];
  final result = binary.binarySearch(7);
  stdout.writeln('O indice do número procurado é : $result');
}
