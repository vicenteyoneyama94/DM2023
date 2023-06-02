import 'package:flutter_application_1/view/dto/contato.dart';

abstract class ContatoInterfaceDAO{
  Future<Contato> salvar(Contato contato);
  Future<Contato> consultar(int id);
  Future<bool> excluir(dynamic id);
  Future<List<Contato>>  consultarTodos();
}