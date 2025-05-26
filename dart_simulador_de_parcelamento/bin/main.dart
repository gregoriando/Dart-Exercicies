import 'dart:io';
import 'package:dart_simulador_de_parcelamento/installment_calculator.dart';

void main() {
  const value = 1000.00;
  const installmentNumber = 18;

  final purchase = InstallmentCalculator(
    value: value,
    installmentNumber: installmentNumber,
  );

  purchase.calculateInstallments();
  stdout.writeln(purchase.printInstallmentsOptions());
  stdout.writeln(purchase.chosenInstallment());
}
