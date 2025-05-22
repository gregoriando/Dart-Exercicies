import 'package:dart_juros_compostos/compound_interest_calculator.dart';
import 'package:test/test.dart';

void main() {
  group('Classe CompoundInterestCalculator', () {
    late CompoundInterestCalculator investiment;

    setUp(() {
      investiment = CompoundInterestCalculator(
        startValue: 100000.00,
        monthlyInvestment: 2000.00,
        taxes: 0.0084,
        numberOfTime: 7,
      );
    });
    test('Calcula Juros Compostos', () {
      double totalAmount = investiment.calculateCompoundInterest();
      expect(totalAmount, closeTo(120388.05, 0.01));
    });
    test('Testa o Map reportMonth para ver se armazena mês a mês', () {
      investiment.calculateCompoundInterest();
      expect(investiment.reportMonth[1], closeTo(102840.00, 0.01));
    });
  });
}
