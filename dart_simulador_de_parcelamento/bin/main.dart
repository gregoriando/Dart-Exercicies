void main() {
  double value = 1000.00;
  List<double> parcelas = [];

  for (int i = 1; i <= 18; i++) {
    if (i >= 1 && i <= 10) {
      double parcela = value / i;
      parcelas.add(
        parcela,
      ); // adicionando o Valor em uma lista para depois se precisar usar fora do looping seja possivel;
      print(
        "Em ${i}x de R\$${parcela.toStringAsFixed(2)} , Total: R\$${value.toStringAsFixed(2)}",
      );
    } else if (i >= 11 && i <= 15) {
      double totalJuros = value * 1.05;
      double parcela = totalJuros / i;
      parcelas.add(parcela);
      print(
        "Em ${i}x de R\$${parcela.toStringAsFixed(2)} , Total: R\$${totalJuros.toStringAsFixed(2)}",
      );
    } else {
      double totalJuros = value * 1.10;
      double parcela = totalJuros / i;
      parcelas.add(parcela);
      print(
        "Em ${i}x de R\$${parcela.toStringAsFixed(2)} , Total: R\$${totalJuros.toStringAsFixed(2)}",
      );
    }
  }
}
