import 'dart:io';

class GraphsDfs {
  final Map<String, List<String>> graph = {};
  final Set<String> visited = {};

  void addEdge(String src, String dest) {
    graph.putIfAbsent(src, () => []);
    graph.putIfAbsent(dest, () => []);
    graph[src]!.add(dest);
    graph[dest]!.add(src);
  }

  void dfs(String node) {
    if (visited.contains(node)) return;

    stdout.write('$node ');
    visited.add(node);

    for (var neighbor in graph[node]!) {
      dfs(neighbor);
    }
  }
}
