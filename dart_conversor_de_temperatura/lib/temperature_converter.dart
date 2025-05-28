enum TemperatureType { celsius, fahrenheit, kelvin }

class TemperatureConverter {
  double temperature;
  TemperatureType type;

  TemperatureConverter({required this.temperature, required this.type});

  Map<String, double> convert() {
    return switch (type) {
      TemperatureType.celsius => {
        'Fahrenheit': (temperature * 9 / 5) + 32,
        'Kelvin': temperature + 273.15,
      },
      TemperatureType.fahrenheit => {
        'Celsius': (temperature - 32) * 5 / 9,
        'Kelvin': ((temperature - 32) * 5 / 9) + 273.15,
      },
      TemperatureType.kelvin => {
        'Celsius': temperature - 273.15,
        'Fahrenheit': ((temperature - 273.15) * 9 / 5) + 32,
      },
    };
  }
}
