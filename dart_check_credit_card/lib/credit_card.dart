import 'package:dart_check_credit_card/card.dart';

class CreditCard extends Card {
  CreditCard({required String number, required double valueOfProducts})
    : super(number, valueOfProducts);

  @override
  double calculatePayment() {
    const taxes = 1.10;
    return valueOfProducts * taxes;
  }
}
