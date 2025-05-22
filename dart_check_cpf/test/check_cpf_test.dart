import 'package:dart_check_cpf/check_cpf.dart';
import 'package:test/test.dart';

void main() {
  group('Classe Check cpf', () {
    test('Verifica se tem 11 letras', () {
      String cpf = '715.583.830-6';
      expect(CheckCpf.validateCpf(cpf), equals(false));
    });
    test('Verfica se todos os números são iguais', () {
      String cpf = '111.111.111-11';
      expect(CheckCpf.validateCpf(cpf), equals(false));
    });
    test('Verifica se Cpf é válido', () {
      String cpf = '715.583.830-69';
      expect(CheckCpf.validateCpf(cpf), equals(true));
    });

    test('Verifica se Cpf é inválido', () {
      String cpf = '715.583.830-60';
      expect(CheckCpf.validateCpf(cpf), equals(false));
    });
  });
}
