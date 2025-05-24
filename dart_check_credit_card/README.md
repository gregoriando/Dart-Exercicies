# Validador de Cartão de Crédito em Dart

Este projeto implementa uma classe para validação de números de cartão de crédito em Dart, utilizando o algoritmo de Luhn.

## Funcionalidades

- Validação de cartões de crédito, verificando:
  - Se possui 16 dígitos numéricos
  - Se não é composto por todos os mesmos números
  - Se o número é válido pelo algoritmo de Luhn

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_check_credit_card
    ```
3. Importe a classe `CheckCreditCard` no seu código Dart:
    ```dart
    import 'package:dart_check_credit_card/check_credit_card.dart';

    void main() {
      String creditCard = '4539 1488 0343 6467';
      print(CheckCreditCard.validadeCreditCard(creditCard)); // return true
    }
    ```

## Estrutura

- `lib/check_credit_card.dart`: Implementa toda a lógica da aplicação
- `test/check_credit_card_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o Dart instalado e estar na raiz do projeto.
Para rodar os testes:

```sh
dart run test
```