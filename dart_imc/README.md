# Calculadora de IMC em Dart

Este projeto implementa uma classe para cálculo do IMC (Índice de Massa Corporal) e classificação do resultado em categorias, utilizando Dart.

## Funcionalidades

- Calcula o IMC a partir do peso e altura informados.
- Classifica o resultado do IMC em categorias:
  - Abaixo do peso
  - Peso normal
  - Sobrepeso
  - Obesidade grau 1
  - Obesidade grau 2
  - Obesidade grau 3

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_imc
    ```
3. Importe a classe `Person` no seu código Dart:
    ```dart
    import 'package:dart_imc/person.dart';

    void main() {
      var pessoa = Person(name: 'João', weight: 70, height: 1.75);
      print('IMC: ${pessoa.imc().toStringAsFixed(2)}');
      print('Categoria: ${pessoa.imcCategory()}');
    }
    ```

## Estrutura

- `lib/person.dart`: Implementa toda a lógica da aplicação
- `test/person_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o Dart instalado e estar na raiz do projeto.
Para rodar os testes:

```sh
dart run test
```