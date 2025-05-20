class CashChangeCalculator {
  double valueOfProduct;
  double receivedValue;
  final List<double> coins = [
    200,
    100,
    50,
    20,
    10,
    5,
    2,
    1,
    0.50,
    0.25,
    0.10,
    0.05,
    0.01,
  ];

  CashChangeCalculator({
    required this.valueOfProduct,
    required this.receivedValue,
  }) {
    if (receivedValue < valueOfProduct) {
      throw ArgumentError(
        'O valor recebido não pode ser menor que o valor do produto.',
      );
    }
  }

  double get change => receivedValue - valueOfProduct;

  Map<double, int> getChange() {
    Map<double, int> result = {};
    double remaingChange = change;
    for (var i = 0; i < coins.length; i++) {
      int quantidade = remaingChange ~/ coins[i];
      if (quantidade > 0) {
        result[coins[i]] =
            quantidade; //armazenando Moeda e a quantidade de vezes que ela usa
        remaingChange -= quantidade * coins[i];
        remaingChange = double.parse(remaingChange.toStringAsFixed(2));
      }
    }
    return result;
  }
}

/*int duzentos = troco ~/ 200;
  double resto = troco % 200;
  int cem = resto ~/ 100;
  resto = resto % 100;
  int cinquenta = resto ~/ 50;
  resto = resto % 50;
  int vinte = resto ~/ 20;
  resto = resto % 20;
  int dez = resto ~/ 10;
  resto = resto % 10;
  int cinco = resto ~/ 5;
  resto = resto % 5;
  int dois = resto ~/ 2;
  resto = resto % 2;
  int um = resto ~/ 1;

  print(
    "seu troco é: 200: $duzentos 100: $cem 50: $cinquenta 20: $vinte 10: $dez 5: $cinco 2: $dois 1: $um",
  );*/
