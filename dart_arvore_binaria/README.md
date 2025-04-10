class Node {
    int value;
    Node left, right;

    Node(int value) {
        this.value = value;
        left = right = null;
    }
}
class BinarySearchTree {
    Node root;

    // Inserção
    void insert(int value) {
        root = insertRec(root, value);
    }

    Node insertRec(Node root, int value) {
        if (root == null) {
            return new Node(value);
        }

        if (value < root.value) {
            root.left = insertRec(root.left, value);
        } else if (value > root.value) {
            root.right = insertRec(root.right, value);
        }

        return root;
    }

    // Busca
    boolean search(int value) {
        return searchRec(root, value);
    }

    boolean searchRec(Node root, int value) {
        if (root == null) return false;
        if (root.value == value) return true;

        return (value < root.value)
            ? searchRec(root.left, value)
            : searchRec(root.right, value);
    }

    // Pré-ordem
    void preOrder() {
        preOrderRec(root);
        System.out.println();
    }

    void preOrderRec(Node root) {
        if (root != null) {
            System.out.print(root.value + " ");
            preOrderRec(root.left);
            preOrderRec(root.right);
        }
    }
}
public class Main {
    public static void main(String[] args) {
        BinarySearchTree tree = new BinarySearchTree();

        tree.insert(10);
        tree.insert(5);
        tree.insert(15);
        tree.insert(3);
        tree.insert(7);

        System.out.println("Pré-ordem:");
        tree.preOrder(); // Deve mostrar: 10 5 3 7 15

        System.out.println("Buscar 7: " + tree.search(7));   // true
        System.out.println("Buscar 20: " + tree.search(20)); // false
    }
}
