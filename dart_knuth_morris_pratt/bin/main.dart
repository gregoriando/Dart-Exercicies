import 'package:dart_knuth_morris_pratt/Knuth_morris_pratt.dart';

void main() {
  KnuthMorrisPratt knuthMorrisPratt = KnuthMorrisPratt(
    text: "ababcababcabc",
    pattern: "ababc",
  );
  knuthMorrisPratt.kmp();
}
