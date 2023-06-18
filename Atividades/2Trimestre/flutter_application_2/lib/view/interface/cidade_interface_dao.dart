import 'package:flutter_application_2/view/dto/cidade.dart';

abstract class CidadeInterfaceDAO{
  Future<Cidade> salvar(Cidade cidade);
  Future<bool> excluir(dynamic id);
  Future<Cidade> consultar(int id);
  Future<List<Cidade>>  consultarTodos();
}