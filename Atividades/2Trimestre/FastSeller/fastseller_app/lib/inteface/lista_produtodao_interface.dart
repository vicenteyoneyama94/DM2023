import 'package:fastseller_app/dto/produto.dart';

abstract class ListaProdutoDAOInterface{

  Future<Produto> salvar (Produto produto);
  Future<Produto> consultar (int id);
  Future<bool> excluir (dynamic id);
  Future<List<Produto>> consultarTodos();
}