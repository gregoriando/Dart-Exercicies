import 'package:dart_lista_binaria/int_extesion.dart';

void main() {
  List<int> binary = [1, 3, 5, 7, 9, 11];
  int result = binary.binarySearch(7);
  print("O indice do número procurado é : $result");
}
