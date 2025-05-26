import 'dart:io';
import 'package:insert_sort/list_extension.dart';

void main() {
  const numbers = [5, 2, 9, 1, 7, 6];
  numbers.insertionSort();
  stdout.writeln(numbers);
}
