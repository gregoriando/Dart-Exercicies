import 'package:dart_simulador_de_parcelamento/installment_calculator.dart';
import 'package:test/test.dart';

void main() {
  group('Classe InstallmentCalculator', () {
    late InstallmentCalculator purchase;
    setUp(() {
      purchase = InstallmentCalculator(value: 1000.00, installmentNumber: 12);
      purchase.calculateInstallments();
    });
    test('Calcula parcelas até 10x sem juros', () {
      expect(purchase.result['installments']![9], closeTo(100.00, 0.01));
      expect(purchase.result['total']![9], closeTo(1000.00, 0.01));
    });
    test('Calcula parcelas entre 11x e 15x com 5% de juros', () {
      expect(purchase.result['installments']![11], closeTo(87.50, 0.01));
      expect(purchase.result['total']![11], closeTo(1050.00, 0.01));
    });
    test('Calcula parcelas entre 16x e 18x com 10% de juros', () {
      expect(purchase.result['installments']![16], closeTo(64.71, 0.01));
      expect(purchase.result['total']![16], closeTo(1100.00, 0.01));
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
      invalidPurchase.calculateInstallments();
      final text = invalidPurchase.chosenInstallment();
      expect(text, equals('Número de parcelas inválido.'));
    });
  });
}
