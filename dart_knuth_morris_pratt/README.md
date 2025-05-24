# Algoritmo Knuth-Morris-Pratt (KMP) em Dart

Este projeto implementa o algoritmo de busca de padrões Knuth-Morris-Pratt (KMP) em Dart, permitindo encontrar todas as ocorrências de um padrão dentro de um texto de forma eficiente.

## Funcionalidades

- Busca todas as ocorrências de um padrão em um texto usando o algoritmo KMP.
- Exibe as posições onde o padrão foi encontrado.
- Implementação eficiente utilizando o vetor de prefixo (lps).

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_knuth_morris_pratt
    ```
3. Importe a classe `KnuthMorrisPratt` no seu código Dart:
    ```dart
    import 'package:dart_knuth_morris_pratt/knuth_morris_pratt.dart';

    void main() {
      var kmp = KnuthMorrisPratt(
        text: 'ababcabcabababd',
        pattern: 'ababd',
      );
      kmp.kmp(); // Saída: Padrão encontrado na posição: 10
    }
    ```

## Estrutura

- `lib/knuth_morris_pratt.dart`: Implementa toda a lógica da aplicação
- `test/knuth_morris_pratt_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o Dart instalado e estar na raiz do projeto.
Para rodar os testes:

```sh
dart run test
```