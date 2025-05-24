# Validador de CNPJ em Dart

Este projeto implementa uma classe para validação de CNPJ (Cadastro Nacional da Pessoa Jurídica) em Dart.

## Funcionalidades

- Validação de CNPJ, verificando:
  - Se possui 14 dígitos numéricos
  - Se não é composto por todos os mesmos números
  - Se os dígitos verificadores estão corretos

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_check_cnpj
    ```
3. Importe a classe `CheckCnpj` no seu código Dart:
    ```dart
    import 'package:dart_check_cnpj/check_cnpj.dart';

    void main() {
      String cnpj = '58.131.582/0001-25';
      String cnpj2 = '11.111.111/1111-11';

      print(CheckCnpj.validadeCnpj(cnpj));
      print(CheckCnpj.validadeCnpj(cnpj2));
    }
    ```

## Estrutura

- `lib/check_cnpj.dart`: Implementação da lógica de validação do CNPJ.
- `test/check_cnpj_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o Dart instalado e estar na raiz do projeto.
Para rodar os testes:

```sh
dart run test
```

Sinta-se à vontade para contribuir ou sugerir melhorias!