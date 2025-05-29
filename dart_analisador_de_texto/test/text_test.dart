import 'package:dart_analisador_de_texto/text.dart';
import 'package:test/test.dart';

void main() {
  group('Classe ModifyText', () {
    test('Verifica se o texto está invertido', () {
      final text = Text('Meu Texto Meu Texto');
      expect(text.reverseText(), equals('otxeT ueM otxeT ueM'));
    });
    test('Verifica o número de letras', () {
      final text = Text('Gregory Luiz');
      expect(text.countLetters(), equals(11));
    });
    test('Verifica o número de palavras', () {
      final text = Text('Gregory Luiz Lopes Freire');
      expect(text.countWords(), equals(4));
    });
    test('Verifica a frequencia que uma palavra apareceu', () {
      final text = Text('Vamos la vamos la');
      expect(text.countFrequencyOfWords(), equals({'vamos': 2, 'la': 2}));
    });
    test('Coloca todas as letras em minusculo e em Lista', () {
      final text = Text('OMG SHOES');
      expect(text.wordsToLowerCase(), equals(['omg', 'shoes']));
    });
  });
}
