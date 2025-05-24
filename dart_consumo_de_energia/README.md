# Consumo de Energia Elétrica em Dart

Este projeto implementa uma classe para cálculo do consumo de energia elétrica, incluindo impostos e bandeiras tarifárias, em Dart.

## Funcionalidades

- Cálculo do valor total da conta de energia com base no consumo (kWh) e tarifa.
- Cálculo automático dos impostos ICMS e COFINS.
- Cálculo do valor total com as bandeiras tarifárias:
  - Bandeira verde (sem acréscimo)
  - Bandeira amarela (acréscimo de R$ 3,25 a cada 100 kWh)
  - Bandeira vermelha (acréscimo de R$ 6,25 a cada 100 kWh)

## Como usar

1. Clone o repositório:
    ```sh
    git clone https://github.com/gregoriando/Dart-Exercicies.git
    ```
2. Navegue até a pasta do projeto:
    ```sh
    cd Dart-Exercicies/dart_consumo_de_energia
    ```
3. Importe a classe `ElectricityConsumption` no seu código Dart:
    ```dart
    import 'package:dart_consumo_de_energia/electricity_consumption.dart';

    void main() {
  ElectricityConsumption bill = ElectricityConsumption(
    kwh: 300,
    taxesbill: 0.85,
  );

  print('Kwh: ${bill.kwh}');
  print('Taxa: ${bill.taxesbill}');
  print('ICMS: ${bill.icmsVal.toStringAsFixed(2)}');
  print('Cofins: ${bill.cofinsVal.toStringAsFixed(2)}');
  print(
    'A conta deu bandeira verde ${bill.totalWithGreenFlag().toStringAsFixed(2)}',
  );
  print(
    'A conta deu bandeira amarela ${bill.totalWithYellowFlag().toStringAsFixed(2)}',
  );
  print(
    'A conta deu bandeira vermelha ${bill.totalWithRedFlag().toStringAsFixed(2)}',
  );
}
    ```

## Estrutura

- `lib/electricity_consumption.dart`: Implementa toda a lógica da aplicação
- `test/electricity_consumption_test.dart`: Contém os testes automatizados.

## Testes

Você precisará ter o dart instalado e estar na raiz do projeto.
Para rodar os testes:

```sh
dart run test
```