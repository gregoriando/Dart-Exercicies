class InstallmentCalculator {
  final double value;
  final int installmentNumber;
  final double juros5 = 1.05;
  final double juros10 = 1.10;
  late final List<({double installment, double total})> data;

  InstallmentCalculator({
    required this.value,
    required this.installmentNumber,
  }) {
    data = _calculateInstallments();
  }

  List<({double installment, double total})> _calculateInstallments() {
    final result = <({double installment, double total})>[];
    for (var i = 1; i <= 18; i++) {
      double total;
      if (i >= 1 && i <= 10) {
        total = value;
      } else if (i >= 11 && i <= 15) {
        total = value * juros5;
      } else {
        total = value * juros10;
      }
      final installment = total / i;
      result.add((installment: installment, total: total));
    }
    return result;
  }

  String chosenInstallment() {
    if (installmentNumber < 1 || installmentNumber > data.length) {
      return 'Número de parcelas inválido';
    }
    final item = data[installmentNumber - 1];

    return '''\nSuas Parcelas são $installmentNumber de: R\$${item.installment.toStringAsFixed(2)},
  O total é de: R\$${item.total.toStringAsFixed(2)};
  ''';
  }

  String printInstallmentsOptions() {
    final showInstallment = StringBuffer();
    for (var i = 0; i < data.length; i++) {
      final item = data[i]; // pega o elemento da lista
      // StringBuffer funciona melhor do que concatenar resultado. (+=)
      showInstallment.writeln(
        'Em ${i + 1}x de R\$${item.installment.toStringAsFixed(2)}, Total: R\$${item.total.toStringAsFixed(2)}',
      );
    }
    return showInstallment.toString();
  }
}
