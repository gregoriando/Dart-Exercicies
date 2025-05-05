class KilometerConversion {
  double kilometer;

  KilometerConversion({required this.kilometer});

  double kilometerToMiles() {
    return kilometer * 0.621371;
  }

  double kilometerToYard() {
    return kilometer * 1093.61;
  }

  double kilometerToFeet() {
    return kilometer * 3280.84;
  }
}
