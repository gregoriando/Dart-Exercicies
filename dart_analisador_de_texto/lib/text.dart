class Text extends StringBuffer {
  Text([String super.initial]);
  // toString pega o texto inteiro e deixa ele montado
  String reverseText() {
    return toString().split('').reversed.join();
  }

  int countLetters() {
    return toString().replaceAll(RegExp(r'\s+'), '').length;
  }

  List<String> wordsToLowerCase() {
    return toString()
        .toLowerCase()
        .split(RegExp(r'\s+'))
        .where((w) => w.isNotEmpty)
        .toList();
  }

  int countWords() {
    return wordsToLowerCase().length;
  }

  Map<String, int> countFrequencyOfWords() {
    final words = wordsToLowerCase();
    final frequencyOfWord = <String, int>{};
    for (var i = 0; i < words.length; i++) {
      final word = words[i];
      // usando um map podemos verificar se a palavra é nula ou diferente da palavra ele adiciona zero,
      // agora se for igual ele adiciona +1
      frequencyOfWord[word] = (frequencyOfWord[word] ?? 0) + 1;
      // (frequencyOfWord[word] ?? 0) testa se é nulo e retorna zero
    }
    return frequencyOfWord;
  }
}
