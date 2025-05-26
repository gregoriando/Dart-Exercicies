import 'dart:io';
import 'package:dart_analisador_de_texto/modify_text.dart';

void main() {
  //•⁠  ⁠Analisador de Texto: Escreva um programa que conte palavras, caracteres e analise a frequência de cada palavra em um texto.
  const text = 'Esse aqui é meu esse ou tro tro tro é é aqui aqui aqui';
  stdout
    ..writeln('texto invertido: ${ModifyText.reverseText(text)}')
    ..writeln('O texto tem: ${ModifyText.countLetters(text)} Letras')
    ..writeln(
      'O texto inteiro em minusculo: ${ModifyText.wordsToLowerCase(text)}',
    )
    ..writeln('Contador de palavras: ${ModifyText.countWords(text)}')
    ..writeln(
      'Contagem de palavras iguais: ${ModifyText.countFrequencyOfWords(text)}',
    );
}
