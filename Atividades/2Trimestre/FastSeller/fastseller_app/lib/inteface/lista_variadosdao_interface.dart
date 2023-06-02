import 'package:fastseller_app/dto/variados.dart';

abstract class ListaVariadosDAOInterface{

  Future<Variados> salvar (Variados variados);
  Future<Variados> consultar (int id);
  Future <bool> excluir (dynamic id);
  Future<List<Variados>> consultarTodos();
}