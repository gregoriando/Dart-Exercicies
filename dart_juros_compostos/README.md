# Calculadora de Juros Compostos em Dart

Este projeto implementa uma classe para cálculo de juros compostos, permitindo simular investimentos mensais e visualizar o crescimento do valor ao longo do tempo, utilizando Dart e o pacote `intl` para formatação monetária.

## Funcionalidades

- Calcula o valor final de um investimento com juros compostos.
- Permite definir valor inicial, aporte mensal, taxa de juros e número de períodos.
- Gera um relatório mês a mês do saldo acumulado.
- Formata valores em reais (R$) para exibição.

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_juros_compostos
    ```
3. Importe a classe `CompoundInterestCalculator` no seu código Dart:
    ```dart
    import 'package:dart_juros_compostos/compound_interest_calculator.dart';

    void main() {
      var calculadora = CompoundInterestCalculator(
        startValue: 1000,
        monthlyInvestment: 200,
        taxes: 0.01, // 1% ao mês
        numberOfTime: 12,
      );
      double total = calculadora.calculateCompoundInterest();
      print('Valor final: ${calculadora.convertToMoney(total)}');
      print('Relatório mês a mês:');
      calculadora.reportMonth.forEach((mes, valor) {
        print('Mês $mes: ${calculadora.convertToMoney(valor)}');
      });
    }
    ```

## Estrutura

- `lib/compound_interest_calculator.dart`: Implementa toda a lógica da aplicação
- `test/compound_interest_calculator_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o Dart instalado e estar na raiz do projeto.
Para rodar os testes:

```sh
dart run test
```