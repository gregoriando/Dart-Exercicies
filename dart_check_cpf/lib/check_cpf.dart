class CheckCpf {
  static bool validateCpf(String cpf) {
    cpf = cpf.replaceAll(RegExp(r'[^0-9]'), '');

    if (cpf.length != 11 || RegExp(r'^(\d)\1*$').hasMatch(cpf)) return false;
    int sum = 0;

    for (var i = 0; i < 9; i++) {
      sum += int.parse(cpf[i]) * (10 - i);
    }
    int firstDigit = (sum * 10) % 11;
    if (firstDigit == 10 || firstDigit == 11) firstDigit = 0;

    int sum2 = 0;
    for (var i = 0; i < 10; i++) {
      sum2 += int.parse(cpf[i]) * (11 - i);
    }
    int secondDigit = (sum2 * 10) % 11;
    if (secondDigit == 10 || secondDigit == 11) secondDigit = 0;

    return (firstDigit == int.parse(cpf[9]) &&
        secondDigit == int.parse(cpf[10]));
  }
}
