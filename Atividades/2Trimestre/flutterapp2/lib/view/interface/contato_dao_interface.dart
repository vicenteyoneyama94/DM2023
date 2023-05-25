import 'package:flutterapp2/view/dto/contato.dart';

abstract class ContatoDAOInterface{
  Contato salvar(Contato contato);
  Contato alterar (Contato contato);
  bool excluir (dynamic id);
  Future<Contato> consultar(int id);
  Future<List<Contato>>  consultarTodos();
}