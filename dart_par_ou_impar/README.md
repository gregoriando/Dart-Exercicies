# Par ou Ímpar em Dart

Este projeto implementa uma classe para verificar se um número é par ou ímpar em Dart, utilizando enumerações para facilitar a identificação e exibição de mensagens.

## Funcionalidades

- Verifica se um número é par ou ímpar.
- Retorna um enum com mensagem personalizada para cada caso.
- Métodos utilitários para verificar se o número é par (`isEven`) ou ímpar (`isOdd`).

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_par_ou_impar
    ```
3. Importe a classe `EvenOdd` e o enum `CheckEvenOrOdd` no seu código Dart:
    ```dart
    import 'package:dart_par_ou_impar/even_odd.dart';

    void main() {
      var numero = EvenOdd(number: 7);
      print(numero.checkParaty().message); // O número é ímpar
      print(numero.isEven()); // false
      print(numero.isOdd());  // true
    }
    ```

## Estrutura

- `lib/even_odd.dart`: Implementa toda a lógica da aplicação