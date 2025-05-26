import 'dart:io';

import 'package:dart_validador_de_senha/validator_password.dart';

void main() {
  const pass = '#Batatinha!@#4';
  const password = 'gregory';

  for (final message in ValidatorPassword.check(password)) {
    stdout.writeln(message);
  }
  for (final message in ValidatorPassword.check(pass)) {
    stdout.writeln(message);
  }
}
