import 'dart:math';

void main() {
  String password = generatePassword(
    numberOfCharacters: 12,
    addUpperCase: true,
    addlowerCase: true,
    addnumbers: true,
    addSymbols: true,
  );

  print(password);
}

String generatePassword({
  required int numberOfCharacters,
  required bool addUpperCase,
  required bool addlowerCase,
  required bool addnumbers,
  required bool addSymbols,
}) {
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

  String password =
      List.generate(numberOfCharacters, (index) {
        return allCharacteres[random.nextInt(allCharacteres.length)];
      }).join();

  return password;
}
