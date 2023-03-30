import 'package:aulaflutter/classes/aluno3.dart';
import 'package:aulaflutter/classes/aluno2.dart';
import 'package:aulaflutter/classes/aluno.dart';
import 'package:aulaflutter/classes/aluno4.dart';
import 'package:aulaflutter/classes/professor.dart';

void main(List<String> arguments) {
  print('aula');

  var aluno = Aluno(); ////// VARIAVEL NULA
  aluno.nome = 'João';
  aluno.RA = 321321321;
  aluno.CPF = '321.312.312-11';

  var professor = Professor();
  professor.SIAPE = 32131232112;
  professor.nome = 'Hélio Kamakawa';
  professor.CPF = '113.223.221-01';

  var aluno2 = Aluno2(11111, 'Juciclei', '444.666.888-10'); // REFERENCIA THIS
  var aluno3 =
      Aluno3(RA: 333, nome: 'Jocleison', CPF: '222.111.444-52'); ///// REQUIRED

  print('${aluno.nome} ${aluno.RA}');
  print('${aluno2.nome} ${aluno2.RA}');
  print('${aluno3.nome} ${aluno3.RA}');
  print('${Aluno3(CPF: '222', nome: 'Josivaldo', RA: 223)}');
  print('${professor.SIAPE} ${professor.nome}');

  var aluno4 = Aluno4(
      RA: 21312,
      nome: 'Anacleison',
      CPF: '111.222.333-44',
      minhaFuncao: minhaFuncao); ///// REQUIRED FUNCTION
}

void minhaFuncao() {
  print('Buscar livro');
}
