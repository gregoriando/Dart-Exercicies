import 'package:dart_conversor_moedas/dolar.dart';
import 'package:dart_conversor_moedas/euro.dart';
import 'package:dart_conversor_moedas/real.dart';

abstract class Money {
  final double value;
  final String symbol;

  Money({required this.value, required this.symbol});

  String toStringFormatted() {
    return '$symbol${value.toStringAsFixed(2)}';
  }

  // se estiver chamando real.convertTo<Dolar>(rates);
  // from é o real
  // to é o dolar
  T convertTo<T extends Money>(Map<String, double> rates) {
    final from = runtimeType.toString().toLowerCase();
    final to = T.toString().toLowerCase();

    final key = '$from/$to';
    final rate = rates[key];
    if (rate == null) {
      throw Exception('Conversão de $from para $to não encontrada.');
    }
    final newValue = value * rate;

    if (T == Real) return Real(value: newValue) as T;
    if (T == Dolar) return Dolar(value: newValue) as T;
    if (T == Euro) return Euro(value: newValue) as T;

    throw Exception('Tipo de conversão inválido: $T');
  }
}
