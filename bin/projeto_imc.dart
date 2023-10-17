import 'package:projeto_imc/projeto_imc.dart' ;

void main(List<String> arguments) {
  Pessoa pessoa = Pessoa('João',92,1.8);
  var imc = pessoa.calculaImc();
  print(imc);
  print(pessoa.getClassification(imc));
}
