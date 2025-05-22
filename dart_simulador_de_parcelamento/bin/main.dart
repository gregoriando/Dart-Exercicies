import 'package:dart_simulador_de_parcelamento/installment_calculator.dart';

void main() {
  double value = 1000.00;
  int installmentNumber = 18;

  InstallmentCalculator purchase = InstallmentCalculator(
    value: value,
    installmentNumber: installmentNumber,
  );

  purchase.calculateInstallments();
  print(purchase.printInstallmentsOptions());
  print(purchase.chosenInstallment());
}
