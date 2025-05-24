# Extensão de Lista com Insertion Sort em Dart

Este projeto implementa uma extensão para listas de inteiros em Dart, adicionando o método de ordenação Insertion Sort diretamente à lista.

## Funcionalidades

- Ordena listas de inteiros utilizando o algoritmo Insertion Sort.
- Utiliza extensão (`extension`) para adicionar o método `insertionSort()` à classe `List<int>`.

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_insert_sort
    ```
3. Importe a extensão no seu código Dart:
    ```dart
    import 'package:dart_insert_sort/list_extension.dart';

    void main() {
      List<int> numeros = [5, 2, 9, 1, 5, 6];
      numeros.insertionSort();
      print(numeros); // [1, 2, 5, 5, 6, 9]
    }
    ```

## Estrutura

- `lib/list_extension.dart`: Implementa toda a lógica da aplicação
- `test/list_extension_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o Dart instalado e estar na raiz do projeto.
Para rodar os testes:

```sh
dart run test
```