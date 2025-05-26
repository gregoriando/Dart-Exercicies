class EvenOdd {
  int number = 0;

  EvenOdd({required this.number});

  CheckEvenOrOdd checkParaty() {
    return number % 2 == 0 ? CheckEvenOrOdd.even : CheckEvenOrOdd.odd;

    // Isso serve para estudo.
    /*CheckEvenOrOdd verify;
    if (number % 2 == 0) {
      verify = CheckEvenOrOdd.even;
    } else {
      verify = CheckEvenOrOdd.odd;
    }

    switch (verify) {
      case CheckEvenOrOdd.even:
        print("O número $number é Par");
        break;
      case CheckEvenOrOdd.odd:
        print("O número $number é Impar");
        break;
    }
    */
  }

  bool isEven() {
    return number % 2 == 0;
  }

  bool isOdd() {
    return number % 2 != 0;
  }
}

enum CheckEvenOrOdd {
  even('O número é par'),
  odd('O número é ímpar');

  final String message;

  const CheckEvenOrOdd(this.message);
}
