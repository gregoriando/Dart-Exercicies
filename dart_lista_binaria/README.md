# Extensão de Lista com Busca Binária em Dart

Este projeto implementa uma extensão para listas de inteiros em Dart, adicionando o método de busca binária (`binarySearch`) diretamente à lista.

## Funcionalidades

- Permite realizar busca binária em listas de inteiros ordenadas.
- Retorna o índice do elemento encontrado ou -1 caso o elemento não exista na lista.
- Utiliza extensão (`extension`) para adicionar o método `binarySearch()` à classe `List<int>`.

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_lista_binaria
    ```
3. Importe a extensão no seu código Dart:
    ```dart
    import 'package:dart_lista_binaria/int_extesion.dart';

    void main() {
      List<int> numeros = [1, 3, 5, 7, 9, 11, 13];
      int indice = numeros.binarySearch(7);
      print(indice); // 3
    }
    ```

## Estrutura

- `lib/int_extesion.dart`: Implementa toda a lógica da aplicação
