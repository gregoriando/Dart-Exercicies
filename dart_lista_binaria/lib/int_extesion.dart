extension IntExtension on List<int> {
  int binarySearch(int number) {
    int start = 0;
    int end = length - 1;

    while (start <= end) {
      int middle = (start + end) ~/ 2;
      if (this[middle] == number) {
        return middle;
      } else if (this[middle] < number) {
        start = middle + 1;
      } else {
        end = middle - 1;
      }
    }
    return -1;
  }
}
