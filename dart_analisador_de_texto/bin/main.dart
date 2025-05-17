void main() {
  //•⁠  ⁠Analisador de Texto: Escreva um programa que conte palavras, caracteres e analise a frequência de cada palavra em um texto.
  String text = 'Esse aqui é meu esse ou tro tro tro é é aqui aqui aqui';
  print(text.replaceAll(' ', '').length);
  print(text.split('').reversed.join());
  List<String> words = text.toLowerCase().split(' ');
  print(words.length);

  Map<String, int> frequencyOfWord = {};

  for (var i = 0; i < words.length; i++) {
    String word = words[i];
    // usando um map podemos verificar se a palavra é nula ou diferente da palavra ele adiciona zero,
    // agora se for igual ele adiciona +1
    frequencyOfWord[word] = (frequencyOfWord[word] ?? 0) + 1;
    // (frequencyOfWord[word] ?? 0) testa se é nulo e retorna zero
  }
  frequencyOfWord.forEach((word, counter) {
    print('$word: $counter');
  });
}
