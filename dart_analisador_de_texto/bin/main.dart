import 'package:dart_analisador_de_texto/modify_text.dart';

void main() {
  //•⁠  ⁠Analisador de Texto: Escreva um programa que conte palavras, caracteres e analise a frequência de cada palavra em um texto.
  String text = 'Esse aqui é meu esse ou tro tro tro é é aqui aqui aqui';
  print('texto invertido: ${ModifyText.reverseText(text)}');
  print('O texto tem: ${ModifyText.countLetters(text)} Letras');
  print('O texto inteiro em minusculo: ${ModifyText.wordsToLowerCase(text)}');
  print('Contador de palavras: ${ModifyText.countWords(text)}');
  print(
    'Contagem de palavras iguais: ${ModifyText.countFrequencyOfWords(text)}',
  );
}
