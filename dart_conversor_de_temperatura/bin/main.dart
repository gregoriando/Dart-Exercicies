import 'dart:io';
import 'package:dart_conversor_de_temperatura/temperature_converter.dart';

void main() {
  final temperature = TemperatureConverter(
    temperature: 200.0,
    type: TemperatureType.fahrenheit,
  );
  final result = temperature.convert();

  result.forEach(
    (key, value) => stdout.writeln('$key: ${value.toStringAsFixed(2)}'),
  );
}
