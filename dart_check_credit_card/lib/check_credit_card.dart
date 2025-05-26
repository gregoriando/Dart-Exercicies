class CheckCreditCard {
  static bool validadeCreditCard(String creditCard) {
    creditCard = creditCard.replaceAll(RegExp(r'[^0-9]'), '');
    creditCard = creditCard.split('').reversed.join();

    if (creditCard.length != 16 || RegExp(r'^(\d)\1*$').hasMatch(creditCard)) {
      return false;
    } else {
      var validate = 0;
      for (var i = 0; i < creditCard.length; i++) {
        var digit = int.parse(creditCard[i]);

        if (i % 2 != 0) {
          digit = digit * 2;
          if (digit > 9) {
            digit = digit - 9;
          }
        }
        validate += digit;
      }
      return validate % 10 == 0;
    }
  }
}
