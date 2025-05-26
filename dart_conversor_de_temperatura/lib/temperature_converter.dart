enum TemperatureType { celsius, fahrenheit, kelvin }

class TemperatureConverter {
  double temperature;
  TemperatureType type;

  TemperatureConverter({required this.temperature, required this.type});

  Map<String, double> convert() {
    switch (type) {
      case TemperatureType.celsius:
        return {
          'Fahrenheit': (temperature * 9 / 5) + 32,
          'Kelvin': temperature + 273.15,
        };
      case TemperatureType.fahrenheit:
        final celsius = (temperature - 32) * 5 / 9;
        return {'Celsius': celsius, 'Kelvin': celsius + 273.15};
      case TemperatureType.kelvin:
        final celsius = temperature - 273.15;
        return {'Celsius': celsius, 'Fahrenheit': (celsius * 9 / 5) + 32};
    }
  }
}
