import 'dart:io';

import 'package:dart_conversor_de_data/data_convert.dart';

void main() {
  const dateYMD = '2025-05-08';
  final dateConvertDMY = DataConvert.convertDate(dateYMD);
  stdout.writeln('Entrada do usuário $dateYMD');
  stdout.writeln('Data modificada pelo classe :$dateConvertDMY');

  const num = 1333330.00;
  stdout.writeln(
    'Número convertido para Brasil ${DataConvert.convertNumber(num)}',
  );

  const value = 854521.00;
  stdout.writeln(
    'Convertido para Reais com o Simbolo ${DataConvert.convertMoney(value)}',
  );
}
