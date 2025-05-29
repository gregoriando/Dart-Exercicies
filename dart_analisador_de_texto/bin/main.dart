import 'dart:io';
import 'package:dart_analisador_de_texto/text.dart';

void main() {
  //•⁠  ⁠Analisador de Texto: Escreva um programa que conte palavras, caracteres e analise a frequência de cada palavra em um texto.
  final text = Text('Esse aqui é meu esse ou tro tro tro é é aqui aqui aqui');
  stdout
    ..writeln('texto invertido: ${text.reverseText()}')
    ..writeln('O texto tem: ${text.countLetters()} Letras')
    ..writeln('O texto inteiro em minusculo: ${text.wordsToLowerCase()}')
    ..writeln('Contador de palavras: ${text.countWords()}')
    ..writeln('Contagem de palavras iguais: ${text.countFrequencyOfWords()}');
}
