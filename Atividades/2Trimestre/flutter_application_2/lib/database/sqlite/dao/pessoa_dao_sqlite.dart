import 'package:flutter_application_2/database/sqlite/conexao.dart';
import 'package:flutter_application_2/view/dto/pessoa.dart';
import 'package:flutter_application_2/view/interface/pessoa_interface_dao.dart';
import 'package:sqflite/sqflite.dart';

class PessoaDAOSQLite implements PessoaInterfaceDAO{
  @override
  Future<Pessoa> consultar(int id) async {
    Database db = await  Conexao.criar();
    Map resultado = (await db.query('pessoa',where: 'id = ?',whereArgs: [id])).first;
    if (resultado.isEmpty) throw Exception('Não foi encontrado registro com este id');
    return converter(resultado);
  }

  @override
  Future<List<Pessoa>> consultarTodos() async {
    Database db = await  Conexao.criar();
    List<Pessoa> lista = (await db.query('pessoa')).map<Pessoa>(converter).toList();
    return lista;
  }

  @override
  Future<bool> excluir(id) async {
    Database db = await  Conexao.criar();
    var sql ='DELETE FROM pessoa WHERE id = ?';
    int linhasAfetas = await db.rawDelete(sql, [id]);
    return linhasAfetas > 0;
  }

  @override
  Future<Pessoa> salvar(Pessoa pessoa) async {
    Database db = await  Conexao.criar();
    String sql;
    if(pessoa.id == null){
      sql = 'INSERT INTO pessoa (nome, endereco, cep, cidade, estado) '
          'VALUES (?,?,?,?,?)';
      int id = await db.rawInsert(sql,[pessoa.nome,pessoa.endereco,
        pessoa.cep, pessoa.cidade, pessoa.estado]);
      pessoa = Pessoa(
          id: id,
          nome: pessoa.nome,
          endereco: pessoa.endereco,
          cep: pessoa.cep,
          cidade: pessoa.cidade,
          estado: pessoa.estado);
    }else{
      sql = 'UPDATE pessoa SET nome = ?, sigla =? WHERE id = ?';
      db.rawUpdate(sql,[pessoa.id, pessoa.nome]);
    }
    return pessoa;
  }

  Pessoa converter(Map<dynamic,dynamic> resultado){
    return Pessoa(
        id : resultado['id'],
        nome: resultado['nome'],
        endereco: resultado['endereco'],
        cep: resultado['cep'],
        cidade: resultado['cidade'],
        estado: resultado['estado']
    );
  }
}