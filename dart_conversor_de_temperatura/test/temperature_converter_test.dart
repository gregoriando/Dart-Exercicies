import 'package:dart_conversor_de_temperatura/temperature_converter.dart';
import 'package:test/test.dart';

void main() {
  group('Conversor de temperatura', () {
    late TemperatureConverter temperature;
    late TemperatureConverter temperature1;
    late TemperatureConverter temperature2;

    setUp(() {
      temperature = TemperatureConverter(
        temperature: 35.0,
        type: TemperatureType.celsius,
      );
      temperature1 = TemperatureConverter(
        temperature: 200.0,
        type: TemperatureType.fahrenheit,
      );
      temperature2 = TemperatureConverter(
        temperature: 400.0,
        type: TemperatureType.kelvin,
      );
    });

    test('Converter Celsius para Fahrenheit e Kelvin', () {
      Map<String, double> result = temperature.convert();
      expect(result["Fahrenheit"], closeTo(95.0, 0.01));
      expect(result["Kelvin"], closeTo(308.15, 0.01));
    });

    test('Converter Fahrenheit para Celsius e Kelvin', () {
      Map<String, double> result1 = temperature1.convert();
      expect(result1["Celsius"], closeTo(93.33, 0.01));
      expect(result1["Kelvin"], closeTo(366.48, 0.01));
    });

    test("Converter Kelvin para Celsius e Fahrenheit", () {
      Map<String, double> result2 = temperature2.convert();
      expect(result2['Celsius'], closeTo(126.85, 0.01));
      expect(result2['Fahrenheit'], closeTo(260.33, 0.01));
    });
  });
}
