# Conversor de Temperatura em Dart

Este projeto implementa uma classe para conversão de temperaturas entre Celsius, Fahrenheit e Kelvin utilizando Dart.

## Funcionalidades

- Converte temperaturas de Celsius para Fahrenheit e Kelvin.
- Converte temperaturas de Fahrenheit para Celsius e Kelvin.
- Converte temperaturas de Kelvin para Celsius e Fahrenheit.

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_conversor_de_temperatura
    ```
3. Importe a classe `TemperatureConverter` e o enum `TemperatureType` no seu código Dart:
    ```dart
    import 'package:dart_conversor_de_temperatura/temperature_converter.dart';

    void main() {
        TemperatureConverter temperature = TemperatureConverter(
            temperature: 200.0,
            type: TemperatureType.fahrenheit,
        );
         Map<String, double> result = temperature.convert();

        result.forEach((key, value) => print("$key: ${value.toStringAsFixed(2)}"));
    }

    ```

## Estrutura

- `lib/temperature_converter.dart`: Implementa toda a lógica da aplicação
- `test/temperature_converter_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o Dart instalado e estar na raiz do projeto.
Para rodar os testes:

```sh
dart run test
```