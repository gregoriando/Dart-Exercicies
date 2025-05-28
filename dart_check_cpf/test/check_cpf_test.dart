import 'package:dart_check_cpf/check_cpf.dart';
import 'package:test/test.dart';

void main() {
  group('Classe Check cpf', () {
    test('Verifica se tem 11 letras', () {
      const cpf = '715.583.830-6';
      expect(CheckCpf.validateCpf(cpf), equals(false));
    });
    test('Verfica se todos os números são iguais', () {
      const cpf = '111.111.111-11';
      expect(CheckCpf.validateCpf(cpf), equals(false));
    });
    test('Verifica se Cpf é válido', () {
      const cpf = '715.583.830-69';
      expect(CheckCpf.validateCpf(cpf), equals(true));
    });
    test('sem caracteres especiais', () {
      const cpf = '71558383069';
      expect(CheckCpf.validateCpf(cpf), equals(true));
    });
    test('parcialmente caracteres especiais', () {
      const cpf = '291800750-10';
      expect(CheckCpf.validateCpf(cpf), equals(true));
    });
    test('parcialmente caracteres especiais', () {
      const cpf = '291.80075010';
      expect(CheckCpf.validateCpf(cpf), equals(true));
    });
    test('inválido, porém sem caracteres especiais', () {
      const cpf = '00000000000';
      expect(CheckCpf.validateCpf(cpf), equals(false));
    });
    test('com letras', () {
      const cpf = 'a91800750101';
      expect(CheckCpf.validateCpf(cpf), equals(false));
    });
    test('com caracteres especiais invalido', () {
      const cpf = '291.800750#10';
      expect(CheckCpf.validateCpf(cpf), equals(false));
    });
    test('com mais de 11 números', () {
      const cpf = '291.800750101';
      expect(CheckCpf.validateCpf(cpf), equals(false));
    });
  });
}
