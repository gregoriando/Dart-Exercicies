import 'package:intl/intl.dart';

extension StringExtension on String {
  String convertDate() {
    try {
      final inputFormatter = DateFormat('yyyy-MM-dd');
      final date = inputFormatter.parse(this);
      final outputFormatter = DateFormat('dd/MM/yyyy');
      return outputFormatter.format(date);
    } catch (e) {
      throw Exception('Formato não é válido');
    }
  }
}

extension DoubleExtension on double {
  String convertNumber() {
    try {
      final numberFormatter = NumberFormat('#,##0.00', 'pt_BR');
      return numberFormatter.format(this);
    } catch (e) {
      throw Exception('Erro no número recebido');
    }
  }

  String convertMoney() {
    try {
      final numberFormatted = NumberFormat.currency(
        symbol: 'R\$',
        locale: 'pt_BR',
      );
      return numberFormatted.format(this);
    } catch (e) {
      throw Exception('Erro no número recebido: $e');
    }
  }
}
