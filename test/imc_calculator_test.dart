import 'package:test/test.dart';
import 'package:imc_calculator/models/pessoa.dart';

void main() {
  group('Pessoa', () {
    test('deve calcular IMC corretamente', () {
      final pessoa = Pessoa('João', 70, 1.75);
      // IMC = 70 / (1.75)² = 70 / 3.0625 ≈ 22.86
      expect(pessoa.imc, closeTo(22.86, 0.01));
    });

    test('deve lançar erro para peso negativo', () {
      expect(() => Pessoa('Maria', -50, 1.60), throwsA(isA<ArgumentError>()));
    });

    test('deve retornar categoria Saudável para IMC entre 18.5 e 25', () {
      final pessoa = Pessoa('Carlos', 70, 1.75); // IMC ≈ 22.86
      expect(pessoa.categoriaImc(), equals('Saudável'));
    });
  });
}
