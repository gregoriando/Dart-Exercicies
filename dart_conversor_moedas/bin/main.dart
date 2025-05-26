import 'dart:io';
import 'package:dart_conversor_moedas/coin_converted.dart';

void main() {
  const realValue = 10.00;
  const coin = 'euro';
  stdout.writeln(CoinConverted.formatConversion(realValue, coin));
}
