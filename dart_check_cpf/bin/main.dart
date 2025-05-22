import 'package:dart_check_cpf/check_cpf.dart';

void main() {
  String cpf = '715.583.830-69';
  String cpf2 = '111.111.111-11';
  String cpf3 = '291.800.750-10';

  print(CheckCpf.validateCpf(cpf));
  print(CheckCpf.validateCpf(cpf2));
  print(CheckCpf.validateCpf(cpf3));
}
