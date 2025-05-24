# Simulador de Parcelamento em Dart

Este projeto implementa uma classe para simular o parcelamento de compras, mostrando valores de cada parcela e o total a ser pago conforme a quantidade de parcelas escolhida.

## Funcionalidades

- Calcula o valor das parcelas e o total a pagar para até 18 parcelas.
- Aplica regras de juros:
  - 1 a 10 parcelas: sem juros.
  - 11 a 15 parcelas: 5% de acréscimo.
  - 16 a 18 parcelas: 10% de acréscimo.
- Permite consultar o valor e total de uma quantidade específica de parcelas.
- Exibe todas as opções de parcelamento disponíveis.

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_simulador_de_parcelamento
    ```
3. Importe a classe `InstallmentCalculator` no seu código Dart:
    ```dart
    import 'package:dart_simulador_de_parcelamento/installment_calculator.dart';

    void main() {
      var calc = InstallmentCalculator(value: 1000, installmentNumber: 12);
      calc.calculateInstallments();
      print(calc.chosenInstallment());
      print(calc.printInstallmentsOptions());
    }
    ```

## Estrutura

- `lib/installment_calculator.dart`: Implementa toda a lógica da aplicação
- `test/installment_calculator_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o Dart instalado e estar na raiz do projeto.
Para rodar os testes:

```sh
dart run test
```