import 'package:dart_currency_converter/coin_converted.dart';

void main() {
  double realValue = 10.00;
  String coin = 'euro';
  print(CoinConverted.formatConversion(realValue, coin));
}
