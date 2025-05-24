# Árvore Binária de Busca (Binary Search Tree) em Dart

Este projeto implementa uma Árvore Binária de Busca (BST) em Dart, permitindo as seguintes operações:

- Inserção de valores na árvore
- Busca de valores na árvore
- Impressão dos valores em pré-ordem (preOrder)

A estrutura foi organizada em classes para facilitar a manutenção e a expansão do código.

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_arvore_binaria
    ```
3. Importe as classes `BinarySearchTree` e `Node` no seu código Dart:
    ```dart
    import 'package:dart_arvore_binaria/binary_search_tree.dart';
    import 'package:dart_arvore_binaria/node.dart';

    void main() {
      BinarySearchTree tree = BinarySearchTree();
      tree.insert(10);
      tree.insert(5);
      tree.insert(15);
      tree.insert(12);
      tree.insert(35);
      tree.insert(1);

      print("Pré-ordem:");
      tree.preOrder();
    }
    ```

## Funcionalidades

- **insert(int value):** Insere um valor na árvore.
- **search(int value):** Retorna `true` se o valor estiver na árvore, `false` caso contrário.
- **preOrder():** Imprime os valores da árvore em pré-ordem.

## Estrutura

- `lib/binary_search_tree.dart`: Implementação da árvore binária de busca.
- `lib/node.dart`: Definição do nó da árvore.