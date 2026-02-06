import 'dart:io' show stdin, stdout;

import 'package:imc_calculator/models/pessoa.dart';

void main(List<String> arguments) {
  String name;
  double altura;
  double peso;
  Pessoa pessoa;

  print('INICIANDO CALCULADORA DE IMC');
  while (true) {
    try {
      stdout.write("Digite seu nome: ");
      name = stdin.readLineSync() ?? '';
      stdout.write("Digite sua altura(m): ");
      altura = double.parse(stdin.readLineSync() ?? '0');
      stdout.write("Digite seu peso(kg): ");
      peso = double.parse(stdin.readLineSync() ?? '0');
      pessoa = Pessoa(name, peso, altura);
      break;
    } catch (e) {
      print("$e\nTente novamente");
    }
  }

  print('PESSOA CADASTRADA COM SUCESSO');
  print("O IMC de ${pessoa.nome} é ${pessoa.imc.toStringAsFixed(2)}(${pessoa.categoriaImc()})");
}
