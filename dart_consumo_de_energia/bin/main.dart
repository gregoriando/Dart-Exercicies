import 'dart:io';
import 'package:dart_consumo_de_energia/electricity_consumption.dart';

void main() {
  final bill = ElectricityConsumption(kwh: 300, taxesbill: 0.85);

  stdout.writeln('Kwh: ${bill.kwh}');
  stdout.writeln('Taxa: ${bill.taxesbill}');
  stdout.writeln('ICMS: ${bill.icmsVal.toStringAsFixed(2)}');
  stdout.writeln('Cofins: ${bill.cofinsVal.toStringAsFixed(2)}');
  stdout.writeln(
    'A conta deu bandeira verde ${bill.totalWithGreenFlag().toStringAsFixed(2)}',
  );
  stdout.writeln(
    'A conta deu bandeira amarela ${bill.totalWithYellowFlag().toStringAsFixed(2)}',
  );
  stdout.writeln(
    'A conta deu bandeira vermelha ${bill.totalWithRedFlag().toStringAsFixed(2)}',
  );
}
