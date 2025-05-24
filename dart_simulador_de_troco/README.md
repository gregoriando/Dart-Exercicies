# Simulador de Troco em Dart

Este projeto implementa uma classe para calcular o troco de uma compra, indicando a quantidade de cada nota e moeda necessária para fornecer o troco de forma otimizada.

## Funcionalidades

- Calcula o troco a ser devolvido ao cliente.
- Determina a quantidade de cada nota e moeda (de R$200 a R$0,01) para compor o troco.
- Valida se o valor recebido é suficiente para a compra.
- Retorna o troco detalhado em um mapa (`Map<double, int>`), onde a chave é o valor da nota/moeda e o valor é a quantidade.

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_simulador_de_troco
    ```
3. Importe a classe `CashChangeCalculator` no seu código Dart:
    ```dart
    import 'package:dart_simulador_de_troco/cash_change_calculator.dart';

    void main() {
      var calc = CashChangeCalculator(
        valueOfProduct: 157.35,
        receivedValue: 200.00,
      );
      print('Troco total: R\$ ${calc.change.toStringAsFixed(2)}');
      print('Detalhamento do troco:');
      calc.getChange().forEach((valor, quantidade) {
        print('R\$ ${valor.toStringAsFixed(2)}: $quantidade');
      });
    }
    ```

## Estrutura

- `lib/cash_change_calculator.dart`: Implementa toda a lógica da aplicação
- `test/cash_change_calculator_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o Dart instalado e estar na raiz do projeto.
Para rodar os testes:

```sh
dart run test
```