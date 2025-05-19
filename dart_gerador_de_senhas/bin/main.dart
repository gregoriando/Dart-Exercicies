import 'package:dart_gerador_de_senhas/password_generator.dart';

void main() {
  String password = PasswordGenerator.generatePassword(
    numberOfCharacters: 12,
    addUpperCase: true,
    addlowerCase: true,
    addnumbers: true,
    addSymbols: true,
  );

  print(password);
}
