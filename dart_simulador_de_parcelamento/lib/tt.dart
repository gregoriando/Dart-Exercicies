import 'dart:io';

class InstallmentCalculator {
  final double value;
  final int installmentNumber;
  final double juros5 = 1.05;
  final double juros10 = 1.10;

  InstallmentCalculator({required this.value, required this.installmentNumber});

  List<({double installment, double total})> calculateInstallments() {
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
    final data = calculateInstallments();
    if (installmentNumber < 1 || installmentNumber > data.length) {
      return 'Número de parcelas inválido';
    }
    final item = data[installmentNumber - 1];

    return '''\nSuas Parcelas são $installmentNumber de: R\$${item.installment.toStringAsFixed(2)},
  O total é de: R\$${item.total.toStringAsFixed(2)};
  ''';
  }

  String printInstallmentsOptions() {
    final data = calculateInstallments();
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

void main() {
  final compra = InstallmentCalculator(value: 1000.00, installmentNumber: 12);
  final instaltaments = compra.calculateInstallments();
  var i = 0;
  for (final installment in instaltaments) {
    // ignore: avoid_print
    stdout.writeln(
      'Parcelas ${i + 1} de ${installment.installment.toStringAsFixed(2)} total: ${installment.total.toStringAsFixed(2)}',
    );
    i++;
  }
}
