import 'package:dart_simulador_de_troco/cash_change_calculator.dart';

void main() {
  CashChangeCalculator calculator = CashChangeCalculator(
    valueOfProduct: 627,
    receivedValue: 700,
  );
  final double change = calculator.change;
  final Map<double, int> result = calculator.getChange();

  print("Troco: R\$${change.toStringAsFixed(2)}");
  result.forEach((coin, quantity) {
    print("R\$${coin.toStringAsFixed(2)} x $quantity");
  });
}
