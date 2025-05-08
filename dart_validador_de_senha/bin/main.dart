import 'package:dart_validador_de_senha/validator_password.dart';

void main() {
  String pass = "#Batatinha!@#4";
  String password = 'gregory';

  ValidatorPassword.checkAndPrint(password);
  ValidatorPassword.checkAndPrint(pass);
}
