import 'package:dart_validador_de_senha/validator_password.dart';
import 'package:test/test.dart';

void main() {
  group('Classe ValidatorPassword', () {
    test('Senha Vazia', () {
      expect(
        ValidatorPassword.validate(''),
        equals([
          'Sua senha não pode ser vazia',
          'Sua senha precisa conter pelo menos 10 caracteres',
          'Sua senha precisa conter pelo menos 1 letra maiúscula',
          'Sua senha precisa conter pelo menos 1 letra minúscula',
          'Sua senha precisa conter pelo menos 1 número',
          'Sua senha precisa conter pelo menos 1 caracter especial',
        ]),
      );
    });

    test('Senha com menos de 10 caracteres', () {
      expect(
        ValidatorPassword.validate('#Batata12'),
        equals(['Sua senha precisa conter pelo menos 10 caracteres']),
      );
    });

    test('Senha sem maiúsculo', () {
      expect(
        ValidatorPassword.validate('*batata123'),
        equals(['Sua senha precisa conter pelo menos 1 letra maiúscula']),
      );
    });

    test('Senha sem minúsculo', () {
      expect(
        ValidatorPassword.validate('*BATATA123'),
        equals(['Sua senha precisa conter pelo menos 1 letra minúscula']),
      );
    });

    test('Senha sem número', () {
      expect(
        ValidatorPassword.validate('#Batatinha'),
        equals(['Sua senha precisa conter pelo menos 1 número']),
      );
    });

    test('Senha sem caractere especial', () {
      expect(
        ValidatorPassword.validate('Batatinha123'),
        equals(['Sua senha precisa conter pelo menos 1 caracter especial']),
      );
    });
  });
}
