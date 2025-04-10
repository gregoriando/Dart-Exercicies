void main() {
  List<int> numbers = [5, 2, 9, 1, 7, 6];
  insertionSort(numbers);

  print(numbers);
}

insertionSort(List<int> numbers) {
  for (int i = 1; i < numbers.length; i++) {
    int actual = numbers[i];
    int j = i - 1;

    while (j >= 0 && numbers[j] > actual) {
      numbers[j + 1] = numbers[j];
      j--;
    }
    numbers[j + 1] = actual;
  }
}
