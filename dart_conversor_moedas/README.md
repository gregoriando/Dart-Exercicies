# Conversor de Moedas em Dart

Este projeto implementa uma classe para conversão de valores em reais (BRL) para outras moedas, como euro e dólar, utilizando Dart.

## Funcionalidades

- Converte valores em reais para euro ou dólar.
- Utiliza taxas de conversão definidas no código.
- Exibe o valor original em reais e o valor convertido com o símbolo da moeda.
- Informa se a moeda solicitada não é suportada.

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_conversor_moedas
    ```
3. Importe a classe `CoinConverted` no seu código Dart:
    ```dart
    import 'package:dart_conversor_moedas/coin_converted.dart';

    void main() {
      print(CoinConverted.formatConversion(100, 'euro'));
      print(CoinConverted.formatConversion(50, 'dolar'));
      print(CoinConverted.formatConversion(20, 'iene')); // moeda não suportada
    }
    ```

## Estrutura

- `lib/coin_converted.dart`: Implementa toda a lógica da aplicação
- `test/coin_converted_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o Dart instalado e estar na raiz do projeto.
Para rodar os testes:

```sh
dart run test
```