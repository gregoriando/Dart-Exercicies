void main() {
  String cnpj = '58.131.582/0001-25';

  String cnpjLimpo = cnpj.replaceAll(RegExp(r'[^0-9]'), '');
  print(cnpjLimpo);

  if (cnpjLimpo.length != 11 || RegExp(r'^(\d)\1*$').hasMatch(cnpjLimpo)) {
    print('nAo pode');
  }

  int sum = 0;

  for (var i = 0; i < 12; i++) {
    if (i <= 3) {
      sum += int.parse(cnpjLimpo[i]) * (5 - i);
      print('first $sum + $i');
    } else {
      sum += int.parse(cnpjLimpo[i]) * (13 - i);
      print('Second $sum + $i');
    }
  }
  int firstDigit = 11 - (sum % 11);
  if (firstDigit == 0 || firstDigit == 1) firstDigit = 0;

  int sum2 = 0;
  for (var i = 0; i < 13; i++) {
    if (i <= 4) {
      sum2 += int.parse(cnpjLimpo[i]) * (6 - i);
      print('first $sum2 + $i');
    } else {
      sum2 += int.parse(cnpjLimpo[i]) * (14 - i);
      print('Second $sum2 + $i');
    }
  }
  int secondDigit = 11 - (sum2 % 11);
  if (secondDigit == 0 || secondDigit == 1) secondDigit = 0;
  print('$firstDigit$secondDigit');
}
