class ValidatorPassword {
  static List<String> check(String password) {
    final errors = validate(password);

    if (errors.isNotEmpty) {
      return ['Senha inválida', ...errors];
    }
    return ['Senha válida'];
  }

  static List<String> validate(String password) {
    final errors = <String>[];
    if (password.isEmpty) {
      errors.add('Sua senha não pode ser vazia');
    }
    if (password.length < 10) {
      errors.add('Sua senha precisa conter pelo menos 10 caracteres');
    }
    if (!RegExp(r'[A-Z]').hasMatch(password)) {
      errors.add('Sua senha precisa conter pelo menos 1 letra maiúscula');
    }
    if (!RegExp(r'[a-z]').hasMatch(password)) {
      errors.add('Sua senha precisa conter pelo menos 1 letra minúscula');
    }
    if (!RegExp(r'\d').hasMatch(password)) {
      errors.add('Sua senha precisa conter pelo menos 1 número');
    }
    if (!RegExp(r'[!@#\$&*~]').hasMatch(password)) {
      errors.add('Sua senha precisa conter pelo menos 1 caracter especial');
    }

    return errors;
  }
}
