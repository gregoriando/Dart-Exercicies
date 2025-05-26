import 'package:dart_arvore_binaria/node.dart';
import 'dart:io';

class BinarySearchTree {
  Node? root;

  void insert(int value) {
    root = _insertRec(root, value);
  }

  Node _insertRec(Node? root, int value) {
    if (root == null) return Node(value);

    if (value < root.value) {
      root.left = _insertRec(root.left, value);
    } else if (value > root.value) {
      root.right = _insertRec(root.right, value);
    }

    return root;
  }

  bool search(int value) {
    return searchRec(root, value);
  }

  bool searchRec(Node? root, int value) {
    if (root == null) return false;
    if (root.value == value) return true;
    return (value < root.value)
        ? searchRec(root.left, value)
        : searchRec(root.right, value);
  }

  void preOrder() {
    _preOrderRec(root);
    stdout.writeln('');
  }

  void _preOrderRec(Node? root) {
    if (root != null) {
      stdout.write('${root.value} ');
      _preOrderRec(root.left);
      _preOrderRec(root.right);
    }
  }
}
