import 'package:fastseller_app/dto/bebida.dart';

abstract class ListaBebidaDAOInterface{
  
  Future<Bebida> salvar (Bebida bebida);
  Future<Bebida> consultar (int id);
  Future<bool> excluir (dynamic id);
  Future<List<Bebida>> consultarTodos();
}