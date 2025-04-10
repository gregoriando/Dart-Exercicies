import java.util.*;

public class GraphDFS {
    private Map<String, List<String>> graph = new HashMap<>();
    private Set<String> visited = new HashSet<>();

    // Adiciona arestas
    public void addEdge(String src, String dest) {
        graph.putIfAbsent(src, new ArrayList<>());
        graph.putIfAbsent(dest, new ArrayList<>());
        graph.get(src).add(dest);
        graph.get(dest).add(src); // Grafo não direcionado
    }

    // Função principal do DFS
    public void dfs(String node) {
        if (visited.contains(node)) return;

        System.out.print(node + " ");
        visited.add(node);

        for (String neighbor : graph.get(node)) {
            dfs(neighbor);
        }
    }

    public static void main(String[] args) {
        GraphDFS g = new GraphDFS();

        // Criando o grafo do exemplo
        g.addEdge("A", "B");
        g.addEdge("A", "C");
        g.addEdge("B", "D");
        g.addEdge("C", "E");
        g.addEdge("E", "F");

        System.out.print("DFS a partir do nó A: ");
        g.dfs("A");
    }
}

