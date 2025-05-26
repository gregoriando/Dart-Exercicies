import 'dart:io';

void main() {
  stdout.writeln(power(2, expoent: -1));
}

double power(int base, {required int expoent}) {
  if (expoent == 0) {
    return 1;
  } else if (expoent > 0) {
    return base * power(base, expoent: expoent - 1);
  } else {
    return 1 / power(base, expoent: -expoent);
  }
}
