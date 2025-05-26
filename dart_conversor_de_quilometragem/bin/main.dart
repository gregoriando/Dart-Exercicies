import 'dart:io';

import 'package:dart_conversor_de_quilometragem/kilometer_conversion.dart';

void main() {
  final kilometer = KilometerConversion(kilometer: 5.0);

  stdout.writeln(kilometer.kilometerToMiles().toStringAsFixed(2));
  stdout.writeln(kilometer.kilometerToYard().toStringAsFixed(2));
  stdout.writeln(kilometer.kilometerToFeet().toStringAsFixed(2));
}
