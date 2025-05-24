# Busca em Profundidade (DFS) em Grafos com Dart

Este projeto implementa uma estrutura de grafo e o algoritmo de busca em profundidade (Depth-First Search - DFS) em Dart.

## Funcionalidades

- Criação de grafos não direcionados usando listas de adjacência.
- Adição de arestas entre os nós do grafo.
- Execução do algoritmo DFS a partir de um nó inicial, exibindo a ordem de visitação.

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_depth_first_search
    ```
3. Importe a classe `GraphsDfs` no seu código Dart:
    ```dart
    import 'package:dart_depth_first_search/graphs_dfs.dart';

    void main() {
      var grafo = GraphsDfs();
      grafo.addEdge('A', 'B');
      grafo.addEdge('A', 'C');
      grafo.addEdge('B', 'D');
      grafo.addEdge('C', 'E');
      grafo.dfs('A'); // Saída: A B D C E
    }
    ```

## Estrutura

- `lib/graphs_dfs.dart`: Implementa toda a lógica da aplicação
