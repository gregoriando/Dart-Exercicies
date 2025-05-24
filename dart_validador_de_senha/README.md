# Validador de Senha em Dart

Este projeto implementa uma classe para validação de senhas em Dart, garantindo que a senha atenda a critérios de segurança definidos.

## Funcionalidades

- Valida se a senha:
  - Não está vazia
  - Possui pelo menos 10 caracteres
  - Contém pelo menos 1 letra maiúscula
  - Contém pelo menos 1 letra minúscula
  - Contém pelo menos 1 número
  - Contém pelo menos 1 caractere especial (`!@#\$&*~`)
- Exibe mensagens de erro específicas para cada critério não atendido.
- Informa se a senha é válida ou inválida.

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_validador_de_senha
    ```
3. Importe a classe `ValidatorPassword` no seu código Dart:
    ```dart
    import 'package:dart_validador_de_senha/validator_password.dart';

    void main() {
      ValidatorPassword.checkAndPrint('MinhaSenha123!');
      ValidatorPassword.checkAndPrint('senha');
    }
    ```

## Estrutura

- `lib/validator_password.dart`: Implementa toda a lógica da aplicação
- `test/validator_password_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o Dart instalado e estar na raiz do projeto.
Para rodar os testes:

```sh
dart run test
```