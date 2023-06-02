import 'package:fastseller_app/database/sqlite/conexao.dart';
import 'package:fastseller_app/dto/variados.dart';
import 'package:fastseller_app/inteface/lista_variadosdao_interface.dart';
import 'package:sqflite/sqflite.dart';

class VariadosDAOSQLite implements ListaVariadosDAOInterface {

  @override
  Future<Variados> consultar(int id) async {
    Database db = await Conexao.criar();
    List<Map> maps = await db.query('variados', where: 'id = ?', whereArgs: [id]);
    if (maps.isEmpty) throw Exception(
        'Não foi encontrado registro com este id');
    Map<dynamic, dynamic> resultado = maps.first;
    return converterVariados(resultado);
  }

  @override
  Future<List<Variados>> consultarTodos() async {
    Database db = await Conexao.criar();
    List<Variados> lista = (await db.query('variados'))
        .map<Variados>(converterVariados)
        .toList();
    return lista;
  }

  @override
  Future<bool> excluir(id) async {
    Database db = await Conexao.criar();
    var sql = 'DELETE FROM variados WHERE id = ?';
    int linhasAfetas = await db.rawDelete(sql, [id]);
    return linhasAfetas > 0;
  }

  @override
  Future<Variados> salvar(Variados variados) async {
    Database db = await Conexao.criar();
    String sql;
    if (variados.id == null) {
      sql = 'INSERT INTO variados (nome, qtde, preco) VALUES (?,?,?,?)';
      int id = await db.rawInsert(
          sql, [variados.nome, variados.qtde, variados.preco]);
      variados = Variados(
          id: id,
          nome: variados.nome,
          qtde: variados.qtde,
          preco: variados.preco
      );
    } else {
      sql = 'UPDATE variados SET nome = ?, qtde =?, preco = ? WHERE id = ?';
      db.rawUpdate(sql, [variados.nome, variados.qtde, variados.preco]);
    }
    return variados;
  }
}

Variados converterVariados(Map<dynamic, dynamic> resultado) {
  return Variados(
      id: resultado['id'],
      nome: resultado['nome'],
      qtde: resultado['quantidade'],
      preco: resultado['preco do produto']
  );
}
