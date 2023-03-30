import 'package:dart_project/pratica/pessoa.dart';

class Funcionario extends Pessoa {
  String telefone;
  String contato;
  Funcionario(
      {required super.nome,
      required super.documento,
      required super.cidade,
      required this.telefone,
      required this.contato});
}
