import 'dart:io';

void main() {
  const numbers = [7, 6, 5, 4, 3, 2, 1, 0];
  final ordered = mergeSort(numbers);
  stdout.writeln(numbers);
  stdout.writeln(ordered);
}

List<int> mergeSort(List<int> numbers) {
  if (numbers.length <= 1) {
    return numbers;
  } else {
    final middle = numbers.length ~/ 2;
    final left = numbers.sublist(0, middle);
    final right = numbers.sublist(middle);
    final sortedLeft = mergeSort(left);
    final sortedRight = mergeSort(right);

    return merge(sortedLeft, sortedRight);
  }
}

List<int> merge(List<int> left, List<int> right) {
  final result = <int>[];
  var i = 0;
  var j = 0;

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
