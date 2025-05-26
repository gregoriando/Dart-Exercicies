extension IntExtension on List<int> {
  int binarySearch(int number) {
    var start = 0;
    var end = length - 1;

    while (start <= end) {
      final middle = (start + end) ~/ 2;
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
