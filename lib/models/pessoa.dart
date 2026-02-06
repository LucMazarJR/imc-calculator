import 'dart:math' show pow;

class Pessoa {
  final String nome;
  late double _peso;
  late double _altura;

  double get peso => _peso;
  set peso(double peso) {
    if (peso < 0) {
      throw ArgumentError("O atributo Peso não deve ser negativo");
    }
    _peso = peso;
  }

  double get altura => _altura;
  set altura(double altura) {
    if (altura < 0) {
      throw ArgumentError("O atributo Altura não deve ser negativo");
    }
    _altura = altura;
  }

  double get imc => _peso / pow(_altura, 2);

  Pessoa(this.nome, double peso, double altura) {
    this.peso = peso;
    this.altura = altura;
  }
}
