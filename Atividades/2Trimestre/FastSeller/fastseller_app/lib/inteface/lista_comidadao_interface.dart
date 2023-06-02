import 'package:fastseller_app/dto/comida.dart';

abstract class ListaComidaDAOInterface{

  Future<Comida> salvar (Comida comida);
  Future<Comida> consultar (int id);
  Future<bool> excluir (dynamic id);
  Future<List<Comida>> consultarTodos();
}