void main() {
  double value = 627.00;
  double recebido = 700.00;
  List<double> moedas = [
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
  double troco = recebido - value;
  Map<double, int> resultado = {};

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

  for (var i = 0; i < moedas.length; i++) {
    int quantidade = troco ~/ moedas[i];
    if (quantidade > 0) {
      resultado[moedas[i]] =
          quantidade; //armazenando Moeda e a quantidade de vezes que ela usa
      print(resultado);
      troco -= quantidade * moedas[i];
      troco = double.parse(troco.toStringAsFixed(2));
    }
  }
  print("Troco: R\$${(recebido - value).toStringAsFixed(2)}");
  resultado.forEach((moeda, quantidade) {
    print("R\$${moeda.toStringAsFixed(2)} x $quantidade");
  });
}
