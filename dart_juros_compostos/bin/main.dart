import 'package:dart_juros_compostos/compound_interest_calculator.dart';

void main(List<String> args) {
  double startValue = 100000.00;
  double monthlyInvestment = 2000.00;
  double taxes = 0.0084;
  int numberOfTime = 7;

  CompoundInterestCalculator investiment = CompoundInterestCalculator(
    startValue: startValue,
    monthlyInvestment: monthlyInvestment,
    taxes: taxes,
    numberOfTime: numberOfTime,
  );

  double totalAmount = investiment.calculateCompoundInterest();

  print("O valor inicial é de: ${investiment.convertToMoney(startValue)}");
  print(
    'O Total do investimento é de: ${investiment.convertToMoney(totalAmount)}',
  );
  investiment.reportMonth.forEach((key, value) {
    print(' Mês: $key  Valor: ${investiment.convertToMoney(value)}');
  });
}
