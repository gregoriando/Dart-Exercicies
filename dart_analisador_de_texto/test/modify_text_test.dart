import 'package:dart_analisador_de_texto/modify_text.dart';
import 'package:test/test.dart';

void main() {
  group('Classe ModifyText', () {
    test('Verifica se o texto está invertido', () {
      String text = 'Meu Texto Meu Texto';
      expect(ModifyText.reverseText(text), equals('otxeT ueM otxeT ueM'));
    });
    test('Verifica o número de letras', () {
      String text = 'Gregory Luiz';
      expect(ModifyText.countLetters(text), equals(11));
    });
    test('Verifica o número de palavras', () {
      String text = 'Gregory Luiz Lopes Freire';
      expect(ModifyText.countWords(text), equals(4));
    });
    test('Verifica a frequencia que uma palavra apareceu', () {
      String text = "Vamos la vamos la";
      expect(
        ModifyText.countFrequencyOfWords(text),
        equals({'vamos': 2, 'la': 2}),
      );
    });
    test('Coloca todas as letras em minusculo e em Lista', () {
      String text = "OMG SHOES";
      expect(ModifyText.wordsToLowerCase(text), equals(['omg', 'shoes']));
    });
  });
}
