extension ListExtension on List<int> {
  void insertionSort() {
    for (var i = 1; i < length; i++) {
      final actual = this[i];
      var j = i - 1;

      while (j >= 0 && this[j] > actual) {
        this[j + 1] = this[j];
        j--;
      }
      this[j + 1] = actual;
    }
  }
}
