void main() {
  List<int> binary = [1, 3, 5, 7, 9, 11];
  int number = 7;

  int result = binarySearch(binary, number);
  print("O indice do número procurado é : $result");
}

int binarySearch(List<int> binary, int number) {
  int start = 0;
  int end = binary.length - 1;

  while (start <= end) {
    int middle = (start + end) ~/ 2;
    if (binary[middle] == number) {
      return middle;
    } else if (binary[middle] < number) {
      start = middle + 1;
    } else {
      end = middle - 1;
    }
  }
  return -1;
}
