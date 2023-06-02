import 'package:fastseller_app/database/sqlite/conexao.dart';
import 'package:fastseller_app/dto/comida.dart';
import 'package:fastseller_app/inteface/lista_comidadao_interface.dart';
import 'package:sqflite/sqflite.dart';

class ComidaDAOSQLite implements ListaComidaDAOInterface {

  @override
  Future<Comida> consultar(int id) async {
    Database db = await Conexao.criar();
    List<Map> maps = await db.query('comida', where: 'id = ?', whereArgs: [id]);
    if (maps.isEmpty) throw Exception(
        'Não foi encontrado registro com este id');
    Map<dynamic, dynamic> resultado = maps.first;
    return converterComida(resultado);
  }

  @override
  Future<List<Comida>> consultarTodos() async {
    Database db = await Conexao.criar();
    List<Comida> lista = (await db.query('comida'))
        .map<Comida>(converterComida)
        .toList();
    return lista;
  }

  @override
  Future<bool> excluir(id) async {
    Database db = await Conexao.criar();
    var sql = 'DELETE FROM comida WHERE id = ?';
    int linhasAfetas = await db.rawDelete(sql, [id]);
    return linhasAfetas > 0;
  }

  @override
  Future<Comida> salvar(Comida comida) async {
    Database db = await Conexao.criar();
    String sql;
    if (comida.id == null) {
      sql = 'INSERT INTO comida (nome, qtde, preco) VALUES (?,?,?,?)';
      int id = await db.rawInsert(
          sql, [comida.nome, comida.qtde, comida.preco]);
      comida = Comida(
          id: id,
          nome: comida.nome,
          qtde: comida.qtde,
          preco: comida.preco
      );
    } else {
      sql = 'UPDATE comida SET nome = ?, qtde =?, preco = ? WHERE id = ?';
      db.rawUpdate(sql, [comida.nome, comida.qtde, comida.preco]);
    }
    return comida;
  }
}

Comida converterComida(Map<dynamic, dynamic> resultado) {
  return Comida(
      id: resultado['id'],
      nome: resultado['nome'],
      qtde: resultado['quantidade'],
      preco: resultado['preco do produto']
  );
}
