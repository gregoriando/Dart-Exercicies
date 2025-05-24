# Conversor de Quilometragem em Dart

Este projeto implementa uma classe para conversão de distâncias em quilômetros para outras unidades de medida, como milhas, jardas e pés, utilizando Dart.

## Funcionalidades

- Converte quilômetros para milhas.
- Converte quilômetros para jardas.
- Converte quilômetros para pés.

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_conversor_de_quilometragem
    ```
3. Importe a classe `KilometerConversion` no seu código Dart:
    ```dart
    import 'package:dart_conversor_de_quilometragem/kilometer_conversion.dart';

    void main() {
      var conversor = KilometerConversion(kilometer: 10);
      print('Milhas: ${conversor.kilometerToMiles()}');    # Conversor de Quilometragem em Dart
    
    Este projeto implementa uma classe para conversão de distâncias em quilômetros para outras unidades de medida, como milhas, jardas e pés, utilizando Dart.
    
    ## Funcionalidades
    
    - Converte quilômetros para milhas.
    - Converte quilômetros para jardas.
    - Converte quilômetros para pés.
    
    ## Como usar
    
    1. Clone o repositório:
        ```sh
        git clone https://github.com/gregoriando/Dart-Exercicies.git
        ```
    2. Navegue até a pasta do projeto:
        ```sh
        cd Dart-Exercicies/dart_conversor_de_quilometragem
        ```
    3. Importe a classe `KilometerConversion` no seu código Dart:
        ```dart
        import 'package:dart_conversor_de_quilometragem/kilometer_conversion.dart';
    
        void main() {
          var conversor = KilometerConversion(kilometer: 10);
          print('Milhas: ${conversor.kilometerToMiles()}');
          print('Jardas: ${conversor.kilometerToYard()}');
          print('Pés: ${conversor.kilometerToFeet()}');
        }
        ```
    
    ## Estrutura
    
    - `lib/kilometer_conversion.dart`: Implementa toda a lógica da aplicação
    - `test/kilometer_conversion_test.dart`: Contém os testes automatizados.
    
    ## Testes
    
    Você precisará ter o Dart instalado e estar na raiz do projeto.
    Para rodar os testes:
    
    ```sh
    dart run test
    ```
      print('Jardas: ${conversor.kilometerToYard()}');
      print('Pés: ${conversor.kilometerToFeet()}');
    }
    ```

## Estrutura

- `lib/kilometer_conversion.dart`: Implementa toda a lógica da aplicação
- `test/kilometer_conversion_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o Dart instalado e estar na raiz do projeto.
Para rodar os testes:

```sh
dart run test
```