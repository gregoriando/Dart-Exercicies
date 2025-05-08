import 'package:dart_conversor_de_data/data_convert.dart';

void main() {
  String dateYMD = "2025-05-08";
  String dateConvertDMY = DataConvert.convertDate(dateYMD);
  print('Entrada do usuário $dateYMD');
  print('Data modificada pelo classe :$dateConvertDMY');

  double num = 1333330.00;
  print("Número convertido para Brasil ${DataConvert.convertNumber(num)}");

  double value = 854521.00;
  print(
    "Convertido para Reais com o Simbolo ${DataConvert.convertMoney(value)}",
  );
}
