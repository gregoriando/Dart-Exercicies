import 'package:dart_conversor_moedas/coin_converted.dart';
import 'package:test/test.dart';

void main() {
  group('Classe CoinConverter', () {
    test('Converte valor para Euro corretamente', () {
      final result = CoinConverted.formatConversion(10.00, 'euro');
      expect(result, contains('€55.00'));
    });
    test('Converte valor para Dólar corretamente', () {
      final result = CoinConverted.formatConversion(10.00, 'dolar');
      expect(result, contains('\$78.00'));
    });
    test('Retorna erro para moeda não suportada', () {
      final result = CoinConverted.formatConversion(10.00, 'yen');
      expect(result, contains('Moeda "yen" não suportada.'));
    });
    test('Converte valores grandes corretamente', () {
      final result = CoinConverted.formatConversion(100000000.00, 'dolar');
      expect(result, contains('\$780000000.00'));
    });
    test('Valor sempre com duas casas decimais', () {
      final result = CoinConverted.formatConversion(10.00, 'euro');
      expect(result, contains('€55.00'));
    });
  });
}
