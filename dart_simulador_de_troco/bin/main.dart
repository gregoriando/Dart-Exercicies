import 'dart:io';

import 'package:dart_simulador_de_troco/cash_change_calculator.dart';

void main() {
  final calculator = CashChangeCalculator(
    valueOfProduct: 627,
    receivedValue: 700,
  );
  final change = calculator.change;
  final result = calculator.getChange();

  stdout.writeln('Troco: R\$${change.toStringAsFixed(2)}');
  result.forEach((coin, quantity) {
    stdout.writeln('R\$${coin.toStringAsFixed(2)} x $quantity');
  });
}
