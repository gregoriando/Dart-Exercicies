class Person {
  String name;
  double weight;
  double height;

  Person({required this.name, required this.weight, required this.height});

  double imc() {
    return weight / (height * height);
  }

  String imcCategory() {
    double value = imc();
    if (value < 18.5) {
      return 'Abaixo do peso';
    } else if (value < 24.9) {
      return 'Peso normal';
    } else if (value < 29.9) {
      return 'Sobrepeso';
    } else if (value < 34.9) {
      return 'Obesidade grau 1';
    } else if (value < 39.9) {
      return 'Obesidade grau 2';
    } else {
      return 'obesidade  grau 3';
    }
  }
}
