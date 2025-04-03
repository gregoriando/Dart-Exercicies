import 'dart:io';

void main() {
  print("Digite uma palavra para ser lida de trás para frente");
  String word = stdin.readLineSync()!.toLowerCase();
  print(word.myreverse());
}

extension StringExtension on String {
  String myreverse() {
    String word = "";
    for (int i = length - 1; i >= 0; i--) {
      word = word + this[i];
    }
    return word;
  }
}
