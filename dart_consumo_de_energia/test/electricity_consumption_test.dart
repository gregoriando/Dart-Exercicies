import 'package:dart_consumo_de_energia/electricity_consumption.dart';
import 'package:test/test.dart';

void main() {
  group('Classe EletricityConsumption', () {
    late ElectricityConsumption bill;

    setUp(() {
      bill = ElectricityConsumption(kwh: 300, taxesbill: 0.85);
    });
    test('Verifica o total da conta (sem taxa)', () {
      expect(bill.total, closeTo(255.00, 0.01));
    });
    test('Calcula ICMS', () {
      expect(bill.icmsVal, closeTo(2.32, 0.01));
    });
    test('Calcula Cofins', () {
      expect(bill.cofinsVal, closeTo(10.53, 0.01));
    });
    test('Calcula Total já bandeira verde', () {
      expect(bill.totalWithGreenFlag(), closeTo(267.85, 0.01));
    });
    test('Calcula Total já bandeira amarela', () {
      expect(bill.totalWithYellowFlag(), closeTo(274.35, 0.01));
    });
    test('Calcula Total já bandeira vermelha', () {
      expect(bill.totalWithRedFlag(), closeTo(280.35, 0.01));
    });
  });
}
