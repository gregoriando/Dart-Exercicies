import 'package:dart_simulador_de_parcelamento/installment_calculator.dart';
import 'package:test/test.dart';

void main() {
  group('Classe InstallmentCalculator', () {
    late InstallmentCalculator purchase;
    setUp(() {
      purchase = InstallmentCalculator(value: 1000.00, installmentNumber: 12);
    });
    test('Calcula parcelas até 10x sem juros', () {
      expect(purchase.data[9].installment, closeTo(100.00, 0.01));
      expect(purchase.data[9].total, closeTo(1000.00, 0.01));
    });
    test('Calcula parcelas entre 11x e 15x com 5% de juros', () {
      expect(purchase.data[11].installment, closeTo(87.50, 0.01));
      expect(purchase.data[11].total, closeTo(1050.00, 0.01));
    });
    test('Calcula parcelas entre 16x e 18x com 10% de juros', () {
      expect(purchase.data[16].installment, closeTo(64.71, 0.01));
      expect(purchase.data[16].total, closeTo(1100.00, 0.01));
    });
    test('Mostra todas as opções de parcelamento', () {
      final text = purchase.printInstallmentsOptions();
      expect(text, contains('Em 1x de R\$1000.00'));
    });
    test('Retorna a parcela escolhida corretamente', () {
      final text = purchase.chosenInstallment();
      expect(text, contains('Suas Parcelas são 12 de: R\$87.50'));
    });
    test('Retorna erro para parcela inválida', () {
      final invalidPurchase = InstallmentCalculator(
        value: 1000.00,
        installmentNumber: 20,
      );
      final text = invalidPurchase.chosenInstallment();
      expect(text, equals('Número de parcelas inválido'));
    });
  });
}
