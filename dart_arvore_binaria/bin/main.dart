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

  print("Pré-oderm:");
  tree.preOrder();
}
