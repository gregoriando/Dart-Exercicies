import 'dart:io';
import 'package:dart_check_cnpj/cnpj.dart';

void main() {
  try {
    final cnpj = Cnpj('45723174000110');
    stdout.writeln('CNPJ válido: ${cnpj.toStringFormatted()}');
  } catch (e) {
    stdout.writeln('Erro: $e');
  }
  try {
    final cnpj = Cnpj('457231740001102');
    stdout.writeln('CNPJ válido: ${cnpj.toStringFormatted()}');
  } catch (e) {
    stdout.writeln('Erro: $e');
  }
  try {
    final cnpj = Cnpj('45723174000110');
    stdout.writeln('CNPJ válido: ${cnpj.toStringFormatted()}');
  } catch (e) {
    stdout.writeln('Erro: $e');
  }
  try {
    final cnpj = Cnpj('11111111111111');
    stdout.writeln('CNPJ válido: ${cnpj.toStringFormatted()}');
  } catch (e) {
    stdout.writeln('Erro: $e');
  }
}
