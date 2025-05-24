# Gerador de Senhas em Dart

Este projeto implementa uma classe para geração de senhas seguras e personalizáveis em Dart.

## Funcionalidades

- Gera senhas com comprimento definido pelo usuário (mínimo de 8 caracteres).
- Permite escolher se a senha terá letras maiúsculas, minúsculas, números e símbolos.
- Gera senhas aleatórias utilizando `Random.secure()` para maior segurança.
- Valida se pelo menos um tipo de caractere foi selecionado.

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_gerador_de_senhas
    ```
3. Importe a classe `PasswordGenerator` no seu código Dart:
    ```dart
    import 'package:dart_gerador_de_senhas/password_generator.dart';

    void main() {
      String senha = PasswordGenerator.generatePassword(
        numberOfCharacters: 12,
        addUpperCase: true,
        addlowerCase: true,
        addnumbers: true,
        addSymbols: true,
      );
      print('Senha gerada: $senha');
    }
    ```

## Estrutura

- `lib/password_generator.dart`: Implementa toda a lógica da aplicação
- `test/password_generator_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o Dart instalado e estar na raiz do projeto.
Para rodar os testes:

```sh
dart run test
```