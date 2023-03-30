import 'dart:io';

void main(List<String> args) {
  cvRealDolarParam(5.50, 1.5);
}

void cvRealDolar() {
  double real, dolar, conversao;
  var cotacao;

  print("Digite o valor do dolar: ");
  real = double.parse(stdin.readLineSync()!);

  print("Digite o preco em dolar: ");
  dolar = double.parse(stdin.readLineSync()!);

  cotacao = real * dolar;
  print("Preco do produto em reais: ${cotacao}");
}

void cvRealDolarParam(double real, double dolar) {
  var cotacao;
  cotacao = real * dolar;
  print(cotacao);
}
