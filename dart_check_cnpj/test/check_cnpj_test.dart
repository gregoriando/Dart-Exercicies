import 'package:dart_check_cnpj/check_cnpj.dart';
import 'package:test/test.dart';

void main() {
  group('Classe CheckCnpj', () {
    test('Verifica se CNPJ tem 14 letras', () {
      const cnpj = '58.131.582/0001-2';
      expect(
        () => CheckCnpj.validadeCnpj(cnpj),
        throwsA(
          predicate(
            (e) =>
                e is ArgumentError &&
                e.message ==
                    'O CNPJ precisa ter 14 letras e não pode ser todos o mesmo número',
          ),
        ),
      );
    });
    test('Verifica se todos os números são iguais', () {
      const cnpj = '11.111.111/1111-11';
      expect(
        () => CheckCnpj.validadeCnpj(cnpj),
        throwsA(
          predicate(
            (e) =>
                e is ArgumentError &&
                e.message == 'Não pode usar os mesmo números',
          ),
        ),
      );
    });
    test('Verifica se o cnpj é válido', () {
      const cnpj = '58.131.582/0001-25';
      expect(CheckCnpj.validadeCnpj(cnpj), equals(true));
    });
    test('Verifica se o cnpj não é válido', () {
      const cnpj = '58.131.582/0001-20';
      expect(CheckCnpj.validadeCnpj(cnpj), equals(false));
    });
  });
}
