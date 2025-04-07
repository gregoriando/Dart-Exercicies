void main() {
  print(power(2, 3));
}

int power(int base, int expoent) {
  if (base == 0) return 1;
  if (base == 1) return base;

  return base * power(base, expoent - 1);
}

// Importante mencionar a titulo de estudos que uma função recursiva funciona exatamente de um modo que ela encontra algo para parar e depois volta.
// exemplo do base ele vai até o if (base == 1) return base; e depois retorna para conseguir fazer as contas , mas primeiro ele sempre usará esse retorno até o minimo.
