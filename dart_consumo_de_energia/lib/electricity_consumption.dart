class ElectricityConsumption {
  int kwh;
  double taxesbill;
  static const double icms = 0.0091;
  static const double cofins = 0.0413;

  ElectricityConsumption({required this.kwh, required this.taxesbill});

  double get total => kwh * taxesbill;
  double get icmsVal => total * icms;
  double get cofinsVal => total * cofins;
  double get totalWithTaxes => total + icmsVal + cofinsVal;
  // usar o get ajuda a sempre atualizar com os valores atuais

  double _applyFlagCharge(double ratePer100) {
    final hundredTaxes = (totalWithTaxes / 100).floor();
    final numberOfTimes = hundredTaxes * ratePer100;
    return totalWithTaxes + numberOfTimes;
  }

  double totalWithYellowFlag() {
    return _applyFlagCharge(3.25);
  }

  double totalWithRedFlag() {
    return _applyFlagCharge(6.25);
  }

  double totalWithGreenFlag() {
    return totalWithTaxes;
  }
}
