extension ListExtension on List<int> {
  void insertionSort() {
    for (int i = 1; i < length; i++) {
      int actual = this[i];
      int j = i - 1;

      while (j >= 0 && this[j] > actual) {
        this[j + 1] = this[j];
        j--;
      }
      this[j + 1] = actual;
    }
  }
}
