import 'package:dart_gerador_de_senhas/password_generator.dart';
import 'package:test/test.dart';

void main() {
  group('Testando a Classe PasswordGenerator', () {
    test('Deve lançar uma exeção se caractere < 8', () {
      expect(
        () => PasswordGenerator.generatePassword(
          numberOfCharacters: 7,
          addUpperCase: true,
          addlowerCase: true,
          addnumbers: true,
          addSymbols: true,
        ),
        throwsA(
          predicate(
            (e) =>
                e is ArgumentError &&
                e.message == 'A senha deve ter pelo menos 8 caracteres',
          ),
        ),
      );
    });

    test('Deve lançar uma exeção se caracter vazio', () {
      expect(
        () => PasswordGenerator.generatePassword(
          numberOfCharacters: 12,
          addUpperCase: false,
          addlowerCase: false,
          addnumbers: false,
          addSymbols: false,
        ),
        throwsA(
          predicate(
            (e) =>
                e is ArgumentError &&
                e.message ==
                    'Você Precisa Adicionar pelo menos um Caracter na Lista',
          ),
        ),
      );
    });
    test('Retornar o password', () {
      final password = PasswordGenerator.generatePassword(
        numberOfCharacters: 12,
        addUpperCase: true,
        addlowerCase: true,
        addnumbers: true,
        addSymbols: true,
      );
      expect(password, isNotEmpty);
    });
  });
}
