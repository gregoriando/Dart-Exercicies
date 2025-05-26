import 'dart:io';

class CheckCnpj {
  static bool validadeCnpj(String cnpj) {
    cnpj = cnpj.replaceAll(RegExp(r'[^0-9]'), '');

    if (cnpj.length != 14) {
      throw ArgumentError(
        'O CNPJ precisa ter 14 letras e não pode ser todos o mesmo número',
      );
    }
    if (RegExp(r'^(\d)\1*$').hasMatch(cnpj)) {
      throw ArgumentError('Não pode usar os mesmo números');
    }

    var sum = 0;

    for (var i = 0; i < 12; i++) {
      if (i <= 3) {
        sum += int.parse(cnpj[i]) * (5 - i);
      } else {
        sum += int.parse(cnpj[i]) * (13 - i);
      }
    }
    var firstDigit = 11 - (sum % 11);
    if (firstDigit < 2) firstDigit = 0;

    var sum2 = 0;
    for (var i = 0; i < 13; i++) {
      if (i <= 4) {
        sum2 += int.parse(cnpj[i]) * (6 - i);
      } else {
        sum2 += int.parse(cnpj[i]) * (14 - i);
      }
    }
    var secondDigit = 11 - (sum2 % 11);
    if (secondDigit < 2) secondDigit = 0;
    stdout.writeln('$firstDigit$secondDigit');

    return cnpj[12] == firstDigit.toString() &&
        cnpj[13] == secondDigit.toString();
  }
}
