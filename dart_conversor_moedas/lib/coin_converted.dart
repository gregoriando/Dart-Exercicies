class CoinConverted {
  static String formatConversion(double realValue, String coin) {
    const symbol = {'euro': '€', 'dolar': '\$'};
    const currency = {'euro': 5.50, 'dolar': 7.80};

    final rate = currency[coin];
    final coinSymbol = symbol[coin];

    if (rate == null || coinSymbol == null) {
      return 'Moeda "$coin" não suportada.';
    }

    final converted = realValue * rate;

    return 'Esse é o valor em real: R\$${realValue.toStringAsFixed(2)}, '
        'esse é o valor convertido: $coinSymbol${converted.toStringAsFixed(2)}';
  }
}
