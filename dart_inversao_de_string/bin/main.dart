void main() {
  String word = "Gregory";
  String temp = "";

  for (int i = word.length - 1; i >= 0; i--) {
    print(word[i]);

    temp = temp + word[i];
  }
  word = temp;
  print(word);
}
