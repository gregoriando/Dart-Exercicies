import 'package:intl/intl.dart';

void main(List<String> args) {
  double startValue = 100000.00;
  double monthlyInvestment = 2000.00;
  double taxes = 0.0084;
  int numberOfTime = 7;
  double totalAmount = startValue;

  String convertToMoney(double totalAmount) {
    try {
      var inputValue = NumberFormat.currency(symbol: 'R\$', locale: 'pt_BR');
      var outputValue = inputValue.format(totalAmount);
      return outputValue;
    } catch (e) {
      throw Exception('Erro no número recebido: $e');
    }
  }

  for (var i = 1; i <= numberOfTime; i++) {
    totalAmount += totalAmount * taxes;

    totalAmount += monthlyInvestment;

    print("Mês: $i Valor: ${convertToMoney(totalAmount)}");
  }

  print('Valor Inicial: ${convertToMoney(startValue)}');
  print("total no final do investimento é: ${convertToMoney(totalAmount)}");
}
