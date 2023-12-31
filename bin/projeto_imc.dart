import 'dart:io';

import 'package:projeto_imc/projeto_imc.dart';

void main(List<String> arguments) {
  print('Informe o nome: ');
  var nome = stdin.readLineSync();
  print('Informe o peso em kg: ');
  var peso = double.tryParse(stdin.readLineSync()!);
  print('Informe a altura em metros: ');
  var altura = double.tryParse(stdin.readLineSync()!);

  Pessoa pessoa = Pessoa(nome: nome, peso: peso, altura: altura);
  var imc = pessoa.calculaImc();
  if (imc != 0) {
    print('-----------------\nIMC: ${imc.toStringAsFixed(2)}');
    print(pessoa.getClassification(imc));
  }
}
