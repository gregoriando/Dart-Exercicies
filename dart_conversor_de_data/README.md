# Conversor de Data, Número e Moeda em Dart

Este projeto implementa uma classe utilitária para conversão de datas, números e valores monetários em Dart, utilizando o pacote `intl` para formatação.

## Funcionalidades

- **Conversão de datas:**  
  Converte datas do formato `yyyy-MM-dd` para `dd/MM/yyyy`.
- **Conversão de números:**  
  Formata números decimais para o padrão brasileiro com duas casas decimais.
- **Conversão de valores monetários:**  
  Formata valores como moeda brasileira (R$).

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_conversor_de_data
    ```
3. Importe a classe `DataConvert` no seu código Dart:
    ```dart
    import 'package:dart_conversor_de_data/data_convert.dart';

    void main() {
      String dateYMD = "2025-05-08";
      String dateConvertDMY = DataConvert.convertDate(dateYMD);
      print('Entrada do usuário: $dateYMD');
      print('Data modificada pela classe: $dateConvertDMY');

      double num = 1333330.00;
      print("Número convertido para Brasil: ${DataConvert.convertNumber(num)}");

      double value = 854521.00;
      print("Convertido para Reais com o símbolo: ${DataConvert.convertMoney(value)}");
    }
    ```

## Estrutura

- `lib/data_convert.dart`: Implementa toda a lógica da aplicação
- `test/data_convert_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o Dart instalado e estar na raiz do projeto.
Para rodar os testes:

```sh
dart run test
```