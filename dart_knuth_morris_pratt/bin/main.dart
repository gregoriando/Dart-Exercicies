void main() {
  String text = "ababcababcabc";
  String pattern = "ababc";

  kmp(text, pattern);
}

void kmp(String text, String pattern) {
  List<int> prefix = computePrefix(pattern);
  int i = 0;
  int j = 0;

  while (i < text.length) {
    if (text[i] == pattern[j]) {
      i++;
      j++;
      if (j == pattern.length) {
        print("Padrão encontrado na posição: ${i - j}");
        j = prefix[j - 1];
      }
    } else if (j > 0) {
      j = prefix[j - 1];
    } else {
      i++;
    }
  }
}

List<int> computePrefix(String pattern) {
  List<int> prefix = List.filled(pattern.length, 0);
  int j = 0;
  for (int i = 1; i < pattern.length; i++) {
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
