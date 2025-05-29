import 'package:dart_check_credit_card/credit_card.dart';
import 'package:dart_check_credit_card/debit_card.dart';
import 'package:test/test.dart';

void main() {
  // fazer expect assim não é a melhor prática, mas eu achei pertinente fazer isso para testar os dois métodos
  // metodo validateCreditCard não foi testado porque ele é privado e o bool retorn o resultado dele
  group('Classe CreditCard && DebitCard', () {
    test('Verifica se o cartão de crédito tem 16 números', () {
      final creditCard = CreditCard(
        number: '4539 1488 0343 646',
        valueOfProducts: 100.00,
      );

      expect(creditCard.isValid(), equals(false));
      expect(creditCard.isNotValid(), equals(true));
    });
    test('Verifica se todos os números são iguais', () {
      final debitCard = DebitCard(
        number: '6666 6666 6666 6666',
        valueOfProducts: 100.00,
      );
      expect(debitCard.isValid(), equals(false));
      expect(debitCard.isNotValid(), equals(true));
    });
    test('Verifica se o cartão é válido', () {
      final creditCard = CreditCard(
        number: '4539 1488 0343 6467',
        valueOfProducts: 100.00,
      );
      expect(creditCard.isValid(), equals(true));
      expect(creditCard.isNotValid(), equals(false));
    });
    test('Verifica se o cartão é inválido', () {
      final debitCard = DebitCard(
        number: '4539 1488 0343 6468',
        valueOfProducts: 100.00,
      );

      expect(debitCard.isValid(), equals(false));
      expect(debitCard.isNotValid(), equals(true));
    });
  });
}
