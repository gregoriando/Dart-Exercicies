import 'package:test/test.dart';
import '../bin/main.dart';

void main() {
  group('Potencia recursiva', () {
    test('Base negativa e expoente positivo', () {
      expect(power(-2, expoent: 3), equals(-8));
    });
    test('Base negativa e expoente negativo', () {
      expect(power(-2, expoent: -2), closeTo(0.25, 0.0001));
    });

    test('Base positiva e expoente negativo', () {
      expect(power(2, expoent: -1), closeTo(0.5, 0.0001));
    });
    test('Base 0', () {
      expect(power(0, expoent: 8), equals(0));
    });
    test('Expoente zero', () {
      expect(power(12, expoent: 0), equals(1));
    });
  });
}
