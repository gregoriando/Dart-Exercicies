import 'dart:io';
import 'package:dart_check_credit_card/check_credit_cart_original.dart';

void main() {
  const creditCard = '4539 1488 0343 6467';
  stdout.writeln(CheckCreditCard.validadeCreditCard(creditCard));
}
