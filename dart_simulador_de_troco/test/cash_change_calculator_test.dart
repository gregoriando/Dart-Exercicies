import 'package:dart_simulador_de_troco/cash_change_calculator.dart';
import 'package:test/test.dart';

void main() {
  group('Testando a classe CashChangeCalculator', () {
    late CashChangeCalculator calculator;
    late Map<double, int> result;

    setUp(() {
      calculator = CashChangeCalculator(
        valueOfProduct: 755.00,
        receivedValue: 800.00,
      );
      result = calculator.getChange();
    });
    test("Valor recebido é < que valor do produto", () {
      expect(
        () =>
            CashChangeCalculator(
              valueOfProduct: 955.00,
              receivedValue: 800.00,
            ).getChange(),
        throwsA(
          predicate(
            (e) =>
                e is ArgumentError &&
                e.message ==
                    'O valor recebido não pode ser menor que o valor do produto.',
          ),
        ),
      );
    });
    test("Verifica se retorna um Map", () {
      expect(result, isA<Map<double, int>>());
    });
    test("Verifica se a função getChange() retorna Map vazio", () {
      expect(result.isNotEmpty, isTrue);
    });

    test("Retorna map vazio quando não tem troco", () {
      final calc = CashChangeCalculator(
        valueOfProduct: 100.00,
        receivedValue: 100.00,
      );
      final result = calc.getChange();
      expect(result, isEmpty);
    });
    test('Retornar o troco correto', () {
      expect(result, equals(<double, int>{20.0: 2, 5.0: 1}));
    });
  });
}
