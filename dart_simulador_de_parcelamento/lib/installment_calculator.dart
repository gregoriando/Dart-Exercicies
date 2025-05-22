class InstallmentCalculator {
  double value;
  int installmentNumber;
  Map<String, List<double>> result = {'installments': [], 'total': []};

  InstallmentCalculator({required this.value, required this.installmentNumber});

  Map<String, List<double>> calculateInstallments() {
    for (int i = 1; i <= 18; i++) {
      double tt;
      if (i >= 1 && i <= 10) {
        tt = value;
      } else if (i >= 11 && i <= 15) {
        tt = value * 1.05;
      } else {
        tt = value * 1.10;
      }
      result['installments']!.add(tt / i);
      result['total']!.add(tt);
    }
    return result;
  }

  String chosenInstallment() {
    if (installmentNumber < 1 ||
        installmentNumber > result['installments']!.length) {
      return 'Número de parcelas inválido.';
    }

    return '''\nSuas Parcelas são $installmentNumber de: R\$${result['installments']?[installmentNumber - 1].toStringAsFixed(2)},
  O total é de: R\$${result['total']?[installmentNumber - 1].toStringAsFixed(2)};
  ''';
  }

  String printInstallmentsOptions() {
    String showInstallment = '';
    for (int i = 0; i < result['installments']!.length; i++) {
      showInstallment +=
          "Em ${i + 1}x de R\$${result['installments']?[i].toStringAsFixed(2)} , Total: R\$${result['total']?[i].toStringAsFixed(2)}\n";
    }
    return showInstallment;
  }
}
