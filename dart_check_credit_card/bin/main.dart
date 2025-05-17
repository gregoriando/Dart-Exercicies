void main() {
  String creditCard = '4539 1488 0343 6467';
  creditCard = creditCard.replaceAll(RegExp(r'[^0-9]'), '');
  creditCard = creditCard.split('').reversed.join();

  if (creditCard.length != 16 || RegExp(r'^(\d)\1*$').hasMatch(creditCard)) {
    print('nAo pode');
  }
  //print(creditCard);
  int validate = 0;
  for (var i = 0; i < creditCard.length; i++) {
    int digit = int.parse(creditCard[i]);
    //print(digit);
    if (i % 2 != 0) {
      digit = digit * 2;
      if (digit > 9) {
        digit = digit - 9;
      }
    }
    validate += digit;
  }
  if (validate % 10 == 0) {
    print('cartao valido');
  } else {
    print('cartao inválido');
  }
}
