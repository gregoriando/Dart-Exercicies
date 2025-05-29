abstract class Card {
  final String number;
  final double valueOfProducts;

  Card(this.number, this.valueOfProducts);

  bool isValid() => _validadeCardNumber();
  bool isNotValid() => !isValid();

  double calculatePayment();

  bool _validadeCardNumber() {
    var numbermodified = number.replaceAll(RegExp(r'[^0-9]'), '');
    numbermodified = numbermodified.split('').reversed.join();

    if (numbermodified.length != 16 ||
        RegExp(r'^(\d)\1*$').hasMatch(numbermodified)) {
      return false;
    } else {
      var validate = 0;
      for (var i = 0; i < numbermodified.length; i++) {
        var digit = int.parse(numbermodified[i]);

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
