import 'dart:io';

void main(List<String> args) {}

void calculaSalarioSRetorno() {
  double salario, calculaDesconto, resultado;

  print('Digite o valor do salário:');
  salario = double.parse(stdin.readLineSync()!);

  print('Digite o valor do desconto:');
  calculaDesconto = double.parse(stdin.readLineSync()!);

  resultado = salario - calculaDesconto;

  print("Salario total: ${resultado}");
}

void calculaSalarioSRetorno1(
    double salario, double calculaDesconto, double resultado) {
  print('Digite o valor do salario:');
  salario = double.parse(stdin.readLineSync()!);

  print('Digite o valor do desconto:');
  calculaDesconto = double.parse(stdin.readLineSync()!);

  resultado = salario - calculaDesconto;
  print("Salario total: ${resultado}");
}

String calculaSalarioPararm(
    double salario, double calculaDesconto, double resultado) {
  print('Digite o valor do salario:');
  salario = double.parse(stdin.readLineSync()!);

  print('Digite o valor do desconto:');
  calculaDesconto = double.parse(stdin.readLineSync()!);

  resultado = salario - calculaDesconto;
  return "${resultado}";
}

String calculaSalarioParam1() {
  double salario, calculaDesconto, resultado;

  print('Digite o valor do salario:');
  salario = double.parse(stdin.readLineSync()!);

  print('Digite o valor do desconto:');
  calculaDesconto = double.parse(stdin.readLineSync()!);

  resultado = salario - calculaDesconto;

  return '$resultado';
}
