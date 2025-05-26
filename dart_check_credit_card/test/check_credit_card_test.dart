import 'package:dart_check_credit_card/check_credit_card.dart';
import 'package:test/test.dart';

void main() {
  group('Classe CheckCreditCard', () {
    test('Verifica se o cartão de crédito tem 16 números', () {
      const creditCard = '4539 1488 0343 646';
      expect(CheckCreditCard.validadeCreditCard(creditCard), equals(false));
    });
    test('Verifica se todos os números são iguais', () {
      const creditCard = '6666 6666 6666 6666';
      expect(CheckCreditCard.validadeCreditCard(creditCard), equals(false));
    });
    test('Verifica se o cartão é válido', () {
      const creditCard = '4539 1488 0343 6467';

      expect(CheckCreditCard.validadeCreditCard(creditCard), equals(true));
    });
    test('Verifica se o cartão é inválido', () {
      const creditCard = '4539 1488 0343 6468';
      expect(CheckCreditCard.validadeCreditCard(creditCard), equals(false));
    });
  });
}
