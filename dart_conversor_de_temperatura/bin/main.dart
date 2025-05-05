import 'package:dart_conversor_de_temperatura/temperature_converter.dart';

void main() {
  TemperatureConverter temperature = TemperatureConverter(
    temperature: 200.0,
    type: TemperatureType.fahrenheit,
  );
  Map<String, double> result = temperature.convert();

  result.forEach((key, value) => print("$key: ${value.toStringAsFixed(2)}"));
}
