void main() {
  double realValue = 10.00;
  String coin = 'euro';
  String result = formatConversion(realValue, coin);
  print(result);
}

String formatConversion(double realValue, String coin) {
  Map<String, String> symbol = {'euro': '€', 'dolar': '\$'};
  Map<String, double> currency = {'euro': 5.50, 'dolar': 7.80};

  double? rate = currency[coin];
  String? coinSymbol = symbol[coin];

  if (rate == null || coinSymbol == null) {
    return 'Moeda "$coin" não suportada.';
  }

  double converted = realValue * rate;

  return 'Esse é o valor em real: R\$${realValue.toStringAsFixed(2)}, '
      'esse é o valor convertido: $coinSymbol${converted.toStringAsFixed(2)}';
}
