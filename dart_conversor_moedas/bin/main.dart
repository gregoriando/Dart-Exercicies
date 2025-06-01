import 'dart:io';
import 'package:dart_conversor_moedas/dolar.dart';
import 'package:dart_conversor_moedas/real.dart';

void main(List<String> args) {
  final rates = {'real/dolar': 0.17, 'dolar/euro': 0.15, 'euro/real': 6.50};

  final real = Real(value: 100.00);

  final dolar = real.convertTo<Dolar>(rates);
  stdout.writeln(dolar.toStringFormatted());
}
