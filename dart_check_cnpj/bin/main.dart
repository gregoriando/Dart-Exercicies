import 'package:dart_check_cnpj/check_cnpj.dart';

void main() {
  String cnpj = '58.131.582/0001-25';
  String cnpj2 = '11.111.111/1111-11';

  print(CheckCnpj.validadeCnpj(cnpj));
  print(CheckCnpj.validadeCnpj(cnpj2));
}
