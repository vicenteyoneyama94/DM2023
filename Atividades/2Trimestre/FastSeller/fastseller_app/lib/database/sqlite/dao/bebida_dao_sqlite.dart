import 'package:fastseller_app/database/sqlite/conexao.dart';
import 'package:fastseller_app/dto/bebida.dart';
import 'package:fastseller_app/inteface/lista_bebidadao_interface.dart';
import 'package:sqflite/sqflite.dart';

class BebidaDAOSQLite implements ListaBebidaDAOInterface {

  @override
  Future<Bebida> consultar(int id) async {
    Database db = await Conexao.criar();
    List<Map> maps = await db.query('bebida', where: 'id = ?', whereArgs: [id]);
    if (maps.isEmpty) throw Exception(
        'Não foi encontrado registro com este id');
    Map<dynamic, dynamic> resultado = maps.first;
    return converterBebida(resultado);
  }

  @override
  Future<List<Bebida>> consultarTodos() async {
    Database db = await Conexao.criar();
    List<Bebida> lista = (await db.query('bebida'))
        .map<Bebida>(converterBebida)
        .toList();
    return lista;
  }

  @override
  Future<bool> excluir(id) async {
    Database db = await Conexao.criar();
    var sql = 'DELETE FROM bebida WHERE id = ?';
    int linhasAfetas = await db.rawDelete(sql, [id]);
    return linhasAfetas > 0;
  }

  @override
  Future<Bebida> salvar(Bebida bebida) async {
    Database db = await Conexao.criar();
    String sql;
    if (bebida.id == null) {
      sql = 'INSERT INTO bebida (nome, qtde, preco) VALUES (?,?,?,?)';
      int id = await db.rawInsert(
          sql, [bebida.nome, bebida.qtde, bebida.preco]);
      bebida = Bebida(
          id: id,
          nome: bebida.nome,
          qtde: bebida.qtde,
          preco: bebida.preco
      );
    } else {
      sql = 'UPDATE bebida SET nome = ?, qtde =?, preco = ? WHERE id = ?';
      db.rawUpdate(sql, [bebida.nome, bebida.qtde, bebida.preco]);
    }
    return bebida;
  }
}

  Bebida converterBebida(Map<dynamic, dynamic> resultado) {
    return Bebida(
        id: resultado['id'],
        nome: resultado['nome'],
        qtde: resultado['quantidade'],
        preco: resultado['preco do produto']
    );
  }
