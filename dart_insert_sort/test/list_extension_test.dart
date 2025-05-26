import 'package:insert_sort/list_extension.dart';
import 'package:test/test.dart';

void main() {
  group('Insertion Sort', () {
    test('Ver se está ordendando recebendo uma Lista', () {
      final numbers = [5, 2, 9, 1, 7, 6];
      numbers.insertionSort();
      expect(numbers, equals([1, 2, 5, 6, 7, 9]));
    });
    test('Lista Vazia', () {
      final List<int> numbers = [];
      numbers.insertionSort();
      expect(numbers, equals([]));
    });
    test('Lista única', () {
      final numbers = [10];
      numbers.insertionSort();
      expect(numbers, equals([10]));
    });
    test('Lista decrescente', () {
      final numbers = [10, 9, 8, 7, 6, 5, 4, 3, 2, 1];
      numbers.insertionSort();
      expect(numbers, equals([1, 2, 3, 4, 5, 6, 7, 8, 9, 10]));
    });
    test('Lista Duplicada', () {
      final numbers = [10, 10, 12, 13, 16, 15, 15, 14, 14, 11];
      numbers.insertionSort();
      expect(numbers, equals([10, 10, 11, 12, 13, 14, 14, 15, 15, 16]));
    });
  });
}
