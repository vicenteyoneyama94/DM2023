import 'package:atilidade1003/classes/aluno.dart';
import 'package:atilidade1003/classes/professor.dart';
import 'package:atilidade1003/classes/professor2.dart';

void main(List<String> arguments) {
  var professor = Professor(1111111, 'Valterney');
  var professor2 = Professor2.contruct();
  professor2.SIAPE = 1111112;
  professor2.nome = 'JAUM';
  professor2.CPF = '111.222.333-01';
  var professor3 = Professor2(SIAPE: 22234, nome: 'Jose', pFuncao: pFuncao);

  var aluno = Aluno(RA: 1111, nome: "Jaum");

  print('${professor.SIAPE}, ${professor.nome}'); //atributos nao-nulos
  print('${professor2.SIAPE} ${professor2.nome} ${professor2.CPF}'); //atr nulo
  print('${Professor2(SIAPE: 22222, nome: 'Augusto', pFuncao: () {
        print("Ola extra");
      })}'); ////// Função anonima
  print(
      '${Professor2(SIAPE: 22222, nome: 'Augusto', pFuncao: () => print("Ola extra"))}'); //Arrow function;
  print('${Aluno(RA: 222, nome: 'Joesley')}'); //Objeto aluno no print
}

void pFuncao() {
  print("Hello World!");
}
