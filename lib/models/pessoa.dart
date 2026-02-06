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

  double get imc => (_peso / pow(_altura, 2));

  Pessoa(this.nome, double peso, double altura) {
    this.peso = peso;
    this.altura = altura;
  }

  String categoriaImc() {
    if (imc < 16) {
      return "Magreza Grave";
    } else if (imc < 17) {
      return "Magreza Moderada";
    } else if (imc < 18.5) {
      return "Magreza Leve";
    } else if (imc < 25) {
      return "Saudável";
    } else if (imc < 30) {
      return "Sobrepeso";
    } else if (imc < 35) {
      return "Obesidade grau I";
    } else if (imc < 40) {
      return "Obesidade grau II (Severa)";
    } else {
      return "Obesidade grau III (Mórbida)";
    }
  }
}
