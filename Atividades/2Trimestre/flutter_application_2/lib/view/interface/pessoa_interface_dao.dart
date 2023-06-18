import 'package:flutter_application_2/view/dto/pessoa.dart';

abstract class PessoaInterfaceDAO{
  Future<Pessoa> salvar(Pessoa pessoa);
  Future<bool> excluir(dynamic id);
  Future<Pessoa> consultar(int id);
  Future<List<Pessoa>>  consultarTodos();
}