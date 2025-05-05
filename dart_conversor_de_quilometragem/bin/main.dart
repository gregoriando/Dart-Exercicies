import 'package:dart_conversor_de_quilometragem/kilometer_conversion.dart';

void main() {
  KilometerConversion kilometer = KilometerConversion(kilometer: 5.0);

  print(kilometer.kilometerToMiles().toStringAsFixed(2));
  print(kilometer.kilometerToYard().toStringAsFixed(2));
  print(kilometer.kilometerToFeet().toStringAsFixed(2));
}
