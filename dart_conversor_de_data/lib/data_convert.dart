import 'package:intl/intl.dart';

class DataConvert {
  //usa-se static na função, pois a classe não precisa de atributos e serve como função utilitária.
  static String convertDate(String inputDate) {
    //usa-se try e catch em situações que não temos controle da entrada por exemplo digitado pelo usuário.
    try {
      var inputFormatter = DateFormat('yyyy-MM-dd');
      DateTime date = inputFormatter.parse(inputDate);
      var outputFormatter = DateFormat('dd/MM/yyyy');
      return outputFormatter.format(date);
    } catch (e) {
      throw Exception('Formato não é válido');
    }
  }

  static String convertNumber(double number) {
    try {
      var inputNumber = NumberFormat('#,##0.00', 'pt_BR');
      var outputNumber = inputNumber.format(number);
      return outputNumber;
    } catch (e) {
      throw Exception('Erro no número recebido');
    }
  }

  static String convertMoney(double value) {
    try {
      var inputValue = NumberFormat.currency(symbol: 'R\$', locale: 'pt_BR');
      var outputValue = inputValue.format(value);
      return outputValue;
    } catch (e) {
      throw Exception('Erro no número recebido: $e');
    }
  }
}
