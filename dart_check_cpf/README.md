# Validador de CPF em Dart

Este projeto implementa uma classe para validação de CPF (Cadastro de Pessoas Físicas) em Dart.

## Funcionalidades

- Validação de CPF, verificando:
  - Se possui 11 dígitos numéricos
  - Se não é composto por todos os mesmos números
  - Se os dígitos verificadores estão corretos

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_check_cpf
    ```
3. Importe a classe `CheckCpf` no seu código Dart:
    ```dart
    import 'package:dart_check_cpf/check_cpf.dart';

   void main() {
  String cpf = '715.583.830-69';
  String cpf2 = '111.111.111-11';
  String cpf3 = '291.800.750-10';

  print(CheckCpf.validateCpf(cpf));
  print(CheckCpf.validateCpf(cpf2));
  print(CheckCpf.validateCpf(cpf3));
}
    ```

## Estrutura
 
- `lib/check_cpf.dart`: Implementa toda a lógica da aplicação
- `test/check_cpf_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o dart instalado e estar na raiz do projeto.
Para rodar os testes:

```sh
dart run test
```