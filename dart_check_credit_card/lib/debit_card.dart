import 'package:dart_check_credit_card/card.dart';

class DebitCard extends Card {
  DebitCard({required String number, required double valueOfProducts})
    : super(number, valueOfProducts);

  @override
  double calculatePayment() {
    const taxes = 1.05;
    return valueOfProducts * taxes;
  }
}
