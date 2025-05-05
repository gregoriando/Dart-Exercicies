import 'package:dart_conversor_de_quilometragem/kilometer_conversion.dart';
import 'package:test/test.dart';

void main() {
  group('Conversor de quilometragem', () {
    late KilometerConversion kilometer;

    setUp(() {
      kilometer = KilometerConversion(kilometer: 5.0);
    });

    test('Converter para milhas', () {
      expect(kilometer.kilometerToMiles(), closeTo(3.11, 0.01));
    });
    test('Converter para Jardas', () {
      expect(kilometer.kilometerToYard(), closeTo(5468.05, 0.01));
    });
    test('Converter para pés', () {
      expect(kilometer.kilometerToFeet(), closeTo(16404.20, 0.01));
    });
  });
}
