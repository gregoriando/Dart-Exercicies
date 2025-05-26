import 'dart:io';

void main() {
  stdout.write('Digite uma palavra para ser lida de trás para frente');
  final word = stdin.readLineSync()!.toLowerCase();
  stdout.write(word.myreverse());
}

extension StringExtension on String {
  String myreverse() {
    var word = '';
    for (var i = length - 1; i >= 0; i--) {
      word = word + this[i];
    }
    return word;
  }
}
