import 'package:intl/intl.dart';

class CompoundInterestCalculator {
  double startValue;
  double monthlyInvestment;
  double taxes;
  int numberOfTime;
  Map<int, double> reportMonth = {};

  CompoundInterestCalculator({
    required this.startValue,
    required this.monthlyInvestment,
    required this.taxes,
    required this.numberOfTime,
  });

  String convertToMoney(double valueToConvert) {
    try {
      var inputValue = NumberFormat.currency(symbol: 'R\$', locale: 'pt_BR');
      var outputValue = inputValue.format(valueToConvert);
      return outputValue;
    } catch (e) {
      throw Exception('Erro no número recebido: $e');
    }
  }

  double calculateCompoundInterest() {
    double totalAmount = startValue;
    for (var i = 1; i <= numberOfTime; i++) {
      totalAmount += totalAmount * taxes;
      totalAmount += monthlyInvestment;
      reportMonth[i] = totalAmount;
    }

    return totalAmount;
  }
}
