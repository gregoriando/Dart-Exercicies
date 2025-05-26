class ModifyText {
  static String reverseText(String text) {
    return text.split('').reversed.join();
  }

  static int countLetters(String text) {
    return text.replaceAll(' ', '').length;
  }

  static List<String> wordsToLowerCase(String text) {
    final words = text.toLowerCase().split(' ');
    return words;
  }

  static int countWords(String text) {
    return wordsToLowerCase(text).length;
  }

  static Map<String, int> countFrequencyOfWords(String text) {
    final words = wordsToLowerCase(text);
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
