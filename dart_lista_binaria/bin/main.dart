void main() {
  List<int> binary = [1, 3, 5, 7, 9, 11];
  int result = binary.binarySearch(7);
  print("O indice do número procurado é : $result");
}

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
