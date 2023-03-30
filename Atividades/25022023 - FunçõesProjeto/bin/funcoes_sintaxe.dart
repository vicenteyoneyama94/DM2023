import 'dart:io';

void main(List<String> arguments) {
  print('sintaxe funções');
  VerificarAprovacao();
  VerificarAprovacao2();
  verificarAprovacao3(3, 8);
  var saida = verificaAprovacao4();
  print(saida);
  var saida1 = verificaAprovacao5(4, 9);
  print(saida1);
}

void VerificarAprovacao() {
  double nota1, nota2, media;
  String resultado;

  print('informe nota 1:');
  nota1 = double.parse(stdin.readLineSync()!);

  print('Informe nota 2:');
  nota2 = double.parse(stdin.readLineSync()!);

  media = (nota1 + nota2) / 2;

  if (media >= 6) {
    resultado = 'aprovado';
  } else {
    resultado = 'reprovado';
  }
  print(resultado);
}

void VerificarAprovacao2() {
  double nota1, nota2, media;
  String resultado;

  print('informe nota 1:');
  nota1 = double.parse(stdin.readLineSync()!);

  print('Informe nota 2:');
  nota2 = double.parse(stdin.readLineSync()!);

  media = (nota1 + nota2) / 2;

  if (media >= 6) {
    print('aprovado');
  } else {
    print('reprovado');
  }
}

void verificarAprovacao3(double nota1, double nota2) {
  double media = (nota1 + nota2) / 2;
  print((media >= 6) ? 'aprovado' : 'reprovado');
}

String verificaAprovacao4() {
  double nota1, nota2, media;
  print('informe nota1');
  nota1 = double.parse(stdin.readLineSync()!);

  print('informe nota2');
  nota2 = double.parse(stdin.readLineSync()!);

  media = (nota1 + nota2) / 2;

  if (media > 6) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}

String verificaAprovacao5(double nota1, double nota2) {
  var media = (nota1 + nota2) / 2;
  if (media > 6) {
    return 'aprovado';
  } else {
    return 'reprovado';
  }
}
