import 'dart:io';

class KnuthMorrisPratt {
  final String text;
  final String pattern;

  KnuthMorrisPratt({required this.text, required this.pattern});

  void kmp() {
    final prefix = _computePrefix(pattern);
    var i = 0;
    var j = 0;

    while (i < text.length) {
      if (text[i] == pattern[j]) {
        i++;
        j++;
        if (j == pattern.length) {
          stdout.write('Padrão encontrado na posição: ${i - j}');
          j = prefix[j - 1];
        }
      } else if (j > 0) {
        j = prefix[j - 1];
      } else {
        i++;
      }
    }
  }

  List<int> _computePrefix(String pattern) {
    final prefix = List.filled(pattern.length, 0);
    var j = 0;
    for (var i = 1; i < pattern.length; i++) {
      while (j > 0 && pattern[i] != pattern[j]) {
        j = prefix[j - 1];
      }
      if (pattern[i] == pattern[j]) {
        j++;
      }
      prefix[i] = j;
    }
    return prefix;
  }
}
