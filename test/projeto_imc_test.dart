import 'package:projeto_imc/errors.dart';
import 'package:projeto_imc/projeto_imc.dart';
import 'package:test/test.dart';

void main() {
  test('Deve retornar um InvalidNameException quando o nome for vazio', () {
    Pessoa pessoa = Pessoa(nome: '', peso: 90.0, altura: 0.0);
    expect(pessoa.calculaImc(), throwsA(isA<InvalidNameException>()));
  });

  test('Deve retornar um InvalidNameException quando o nome for null', () {
    Pessoa pessoa = Pessoa(peso: 90, altura: 0);
    expect(pessoa.calculaImc(), throwsA(isA<InvalidNameException>()));
  });

  test('Deve retornar um InvalidHeightException quando a altura for nulo', () {
    Pessoa pessoa = Pessoa(
      nome: 'João',
      peso: 90,
    );
    expect(pessoa.calculaImc(), throwsA(isA<InvalidHeightException>()));
  });
  test('Deve retornar um InvalidHeightException quando a altura for zero', () {
    Pessoa pessoa = Pessoa(nome: 'João', peso: 90, altura: 0);
    expect(pessoa.calculaImc(), throwsA(isA<InvalidHeightException>()));
  });

  test(
      'Deve retornar um InvalidHeightException quando a altura for passada em centímetros',
      () {
    Pessoa pessoa = Pessoa(nome: 'João', peso: 90, altura: 180);
    expect(pessoa.calculaImc(), throwsA(isA<InvalidHeightException>()));
  });

  test('Deve retornar um InvalidWeightException quando o peso for nulo', () {
    Pessoa pessoa = Pessoa(nome: 'João', altura: 180);
    expect(pessoa.calculaImc(), throwsA(isA<InvalidWeightException>()));
  });
  test('Deve retornar um InvalidWeightException quando o peso for 0', () {
    Pessoa pessoa = Pessoa(nome: 'João', peso: 0, altura: 180);
    expect(pessoa.calculaImc(), throwsA(isA<InvalidWeightException>()));
  });
}
