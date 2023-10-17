int calculate() {
  return 6 * 7;
}


class Pessoa{
  final String nome;
  final double peso;
  final double altura;

  Pessoa(this.nome, this.peso, this.altura);

  double calculaImc(){
    return peso/(altura*altura);
  }

  String getClassification(double imc){
    var classification = '';
    if(imc>40){
      classification = 'Obesidade Grau III (mórbida)';
    }else if(imc>35){
      classification = 'Obesidade Grau II (severa)';
    }else if(imc>30){
      classification = 'Obesidade Grau I';
    }else if(imc>25){
      classification = 'Sobreepeso';
    }else if(imc>18.5){
      classification = 'Saudável';
    }else if(imc>16){
      classification = 'Magreza moderada';
    }else{
      classification = 'Magreza grave';
    }

    return classification;
  }

}