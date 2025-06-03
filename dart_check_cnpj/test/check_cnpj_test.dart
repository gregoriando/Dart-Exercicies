import 'package:dart_check_cnpj/cnpj.dart';
import 'package:test/test.dart';

void main() {
  group('Classe Cnpj', () {
    test('Cnpj válido', () {
      expect(() => Cnpj('58.131.582/0003-97'), returnsNormally);
    });
    test('Formatar corretamente o Cnpj', () {
      final cnpj = Cnpj('58131582000397');
      expect(cnpj.toStringFormatted(), '58.131.582/0003-97');
    });
    test('Lançar erro cnpj inválido', () {
      expect(() => Cnpj('58.131.582/0003-98'), throwsArgumentError);
    });
    test('Números iguais no cnpj', () {
      expect(() => Cnpj('11.111.111/1111-11'), throwsArgumentError);
    });
    test('Cnpj erro com menos de 14 letras', () {
      expect(() => Cnpj('58.131.582/0003-9'), throwsArgumentError);
    });
    test('Cnpj erro com mais de 14 letras', () {
      expect(() => Cnpj('58.131.582/0003-981'), throwsArgumentError);
    });
  });
}
