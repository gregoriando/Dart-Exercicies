void main() {
  print(power(2, 3));
}

int power(int base, int expoent) {
  if (expoent == 0) return 1;
  if (expoent == 1) return base;

  return base * power(base, expoent - 1);
}
