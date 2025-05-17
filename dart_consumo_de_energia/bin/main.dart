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
  print('A conta deu ${bill.totalWithGreenFlag().toStringAsFixed(2)}');
  print('A conta deu ${bill.totalWithYellowFlag().toStringAsFixed(2)}');
  print('A conta deu ${bill.totalWithRedFlag().toStringAsFixed(2)}');
}
