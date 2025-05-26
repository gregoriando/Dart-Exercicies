import 'dart:io';

import 'package:dart_check_cnpj/check_cnpj.dart';

void main() {
  const cnpj = '58.131.582/0001-25';
  const cnpj2 = '11.111.111/1111-11';

  stdout.writeln(CheckCnpj.validadeCnpj(cnpj));
  stdout.writeln(CheckCnpj.validadeCnpj(cnpj2));
}
