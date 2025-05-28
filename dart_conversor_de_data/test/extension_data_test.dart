import 'package:dart_conversor_de_data/extension_data.dart';
import 'package:test/test.dart';

void main() {
  group('DataConvert', () {
    test('testando convertDate Extension', () {
      const date = '2025-05-08';
      expect(date.convertDate(), equals('08/05/2025'));
    });

    test('testando convertNumber Extension', () {
      const number = 10000.00;
      const numberFormatted = '10.000,00';
      expect(number.convertNumber(), equals(numberFormatted));
    });
    test('testando convertMoney Extension', () {
      const value = 40555.70;
      const valueFormatted = 'R\$40.555,70';
      final result = value.convertMoney().replaceAll('\u00A0', '');
      expect(result, equals(valueFormatted));
    });
  });
}
