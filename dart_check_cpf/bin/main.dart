import 'dart:io';
import 'package:dart_check_cpf/check_cpf.dart';

void main() {
  const cpf = '71558383069';
  const cpf2 = '111.111.111-11';
  const cpf3 = '291.800.750-10';
  const cpf4 = '291800750-10';
  const cpf5 = '291.80075010';
  const cpf6 = '00000000000';
  const cpf7 = 'a91800750101';

  stdout.writeln(CheckCpf.validateCpf(cpf));
  stdout.writeln(CheckCpf.validateCpf(cpf2));
  stdout.writeln(CheckCpf.validateCpf(cpf3));
  stdout.writeln(CheckCpf.validateCpf(cpf4));
  stdout.writeln(CheckCpf.validateCpf(cpf5));
  stdout.writeln(CheckCpf.validateCpf(cpf6));
  stdout.writeln(CheckCpf.validateCpf(cpf7));
}
