import 'dart:math';

class PasswordGenerator {
  static String generatePassword({
    required int numberOfCharacters,
    required bool addUpperCase,
    required bool addlowerCase,
    required bool addnumbers,
    required bool addSymbols,
  }) {
    if (numberOfCharacters < 8) {
      throw ArgumentError("A senha deve ter pelo menos 8 caracteres");
    }
    final random = Random.secure();
    String upperCase = 'ABCDEFGHIJKLMNOPQRSTUVWXYZ';
    String lowerCase = 'abcdefghijklmnopqrstuvwxyz';
    String numbers = '0123456789';
    String symbols = '!"#%&*+-/:;<=>?@^';

    String allCharacteres = '';
    if (addUpperCase) allCharacteres += upperCase;
    if (addlowerCase) allCharacteres += lowerCase;
    if (addnumbers) allCharacteres += numbers;
    if (addSymbols) allCharacteres += symbols;

    if (allCharacteres.isEmpty) {
      throw ArgumentError(
        "Você Precisa Adicionar pelo menos um Caracter na Lista",
      );
    }

    String password =
        List.generate(numberOfCharacters, (index) {
          return allCharacteres[random.nextInt(allCharacteres.length)];
        }).join();

    return password;
  }
}
