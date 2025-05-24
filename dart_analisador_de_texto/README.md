# Analisador de Texto

Este projeto é um analisador de texto em Dart. Com ele, você pode:

- Inverter o texto
- Contar quantas letras o texto possui
- Deixar o texto em minúsculo
- Contar quantas palavras o texto possui
- Contar quantas vezes uma palavra aparece no texto

O programa foi elaborado com testes automatizados e organizado em classes para garantir fácil manutenção e boas práticas de programação.

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_analisador_de_texto
    ```
3. Importe a classe `ModifyText` no seu código Dart:
    ```dart
    import 'package:dart_analisador_de_texto/modify_text.dart';

    void main() {
      String text = 'Esse aqui é meu esse ou tro tro tro é é aqui aqui aqui';
      print('Texto invertido: ${ModifyText.reverseText(text)}');
      print('O texto tem: ${ModifyText.countLetters(text)} letras');
      print('O texto inteiro em minúsculo: ${ModifyText.wordsToLowerCase(text)}');
      print('Contador de palavras: ${ModifyText.countWords(text)}');
      print('Contagem de palavras iguais: ${ModifyText.countFrequencyOfWords(text)}');
    }
    ```

## Estrutura

- `lib/modify_text.dart`: Implementa toda a lógica da aplicação
- `test/modify_text_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o Dart instalado e estar na raiz do projeto.  
Para rodar os testes:

```sh
dart run test
```