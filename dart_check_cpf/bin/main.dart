import 'package:dart_check_cpf/check_cpf.dart';

void main() {
  String cpf = '369.837.858-27';
  String cpf2 = '111.111.111-11';
  String cpf3 = '783.182.708-00';

  print(CheckCpf.validateCpf(cpf));
  print(CheckCpf.validateCpf(cpf2));
  print(CheckCpf.validateCpf(cpf3));
}
