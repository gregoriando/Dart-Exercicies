import 'package:dart_depth_first_search/graphs_dfs.dart';

void main() {
  GraphsDfs graph = GraphsDfs();
  graph.addEdge("A", "B");
  graph.addEdge("A", "C");
  graph.addEdge("B", "D");
  graph.addEdge("C", "E");
  graph.addEdge("E", "F");

  print("DFS a partir do nó A:");
  graph.dfs("A");
}
