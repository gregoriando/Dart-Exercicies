import 'package:dart_imc/person.dart';
import 'package:test/test.dart';

void main() {
  group('IMC', () {
    late Person person;

    setUp(() {
      person = Person(name: 'Gregory', weight: 105.0, height: 1.83);
    });
    test('Verificando imc', () {
      expect(person.imc(), closeTo(31.35, 0.01));
    });
    test('Verificando categoria', () {
      expect(person.imcCategory(), 'Obesidade grau 1');
    });
  });
}
