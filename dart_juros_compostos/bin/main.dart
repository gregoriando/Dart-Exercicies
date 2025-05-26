import 'dart:io';

import 'package:dart_juros_compostos/compound_interest_calculator.dart';

void main(List<String> args) {
  const startValue = 100000.00;
  const monthlyInvestment = 2000.00;
  const taxes = 0.0084;
  const numberOfTime = 7;

  final investiment = CompoundInterestCalculator(
    startValue: startValue,
    monthlyInvestment: monthlyInvestment,
    taxes: taxes,
    numberOfTime: numberOfTime,
  );

  final totalAmount = investiment.calculateCompoundInterest();

  stdout.writeln(
    'O valor inicial é de: ${investiment.convertToMoney(startValue)}',
  );
  stdout.writeln(
    'O Total do investimento é de: ${investiment.convertToMoney(totalAmount)}',
  );
  investiment.reportMonth.forEach((key, value) {
    stdout.writeln(' Mês: $key  Valor: ${investiment.convertToMoney(value)}');
  });
}
