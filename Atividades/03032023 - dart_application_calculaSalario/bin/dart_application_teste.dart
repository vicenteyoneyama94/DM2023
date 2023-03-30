import 'dart:io';

import 'package:dart_application_teste/dart_application_teste.dart'
    as dart_application_teste;

void main(List<String> arguments) {
  criarBotao("azul", numero: 11.0, objeto: "caneta");
}

void calcularSalario() {
  double salario, desconto, resultado;

  print("Digite o valor do salario:");
  salario = double.parse(stdin.readLineSync()!);

  print("Digite o valor do desconto:");
  desconto = double.parse(stdin.readLineSync()!);

  resultado = salario - desconto;
  print('${resultado}');
}

void criarBotao(String cor, {double numero, String objeto}) {
  print(cor);
  print(numero);
  print(objeto);
}
