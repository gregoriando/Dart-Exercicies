void main() {
  List<int> numbers = [7, 6, 5, 4, 3, 2, 1, 0];
  List<int> ordered = mergeSort(numbers);
  print(numbers);
  print(ordered);
}

List<int> mergeSort(List<int> numbers) {
  if (numbers.length <= 1) {
    return numbers;
  } else {
    int middle = numbers.length ~/ 2;
    List<int> left = numbers.sublist(0, middle);
    List<int> right = numbers.sublist(middle);
    List<int> sortedLeft = mergeSort(left);
    List<int> sortedRight = mergeSort(right);

    return merge(sortedLeft, sortedRight);
  }
}

List<int> merge(List<int> left, List<int> right) {
  List<int> result = [];
  int i = 0;
  int j = 0;

  while (i < left.length && j < right.length) {
    if (left[i] <= right[j]) {
      result.add(left[i]);
      i++;
    } else {
      result.add(right[j]);
      j++;
    }
  }
  while (i < left.length) {
    result.add(left[i]);
    i++;
  }
  while (j < right.length) {
    result.add(right[j]);
    j++;
  }
  return result;
}
