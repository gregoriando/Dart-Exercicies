import 'package:dart_conversor_de_data/data_convert.dart';
import 'package:test/test.dart';

void main() {
  group('DataConvert', () {
    test('testando convertDate', () {
      const inputDate = '2025-05-08';
      const outputDate = '08/05/2025';
      expect(DataConvert.convertDate(inputDate), equals(outputDate));
    });

    test('testando convertNumber', () {
      const number = 10000.00;
      const numberFormatted = '10.000,00';
      expect(DataConvert.convertNumber(number), equals(numberFormatted));
    });
    test('testando convertMoney', () {
      const value = 40555.70;
      const valueFormatted = 'R\$40.555,70';
      final result = DataConvert.convertMoney(value).replaceAll('\u00A0', '');
      expect(result, equals(valueFormatted));
    });
  });
}
