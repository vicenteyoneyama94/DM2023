import 'package:flutterapp2/view/dto/contato.dart';
import 'package:flutterapp2/view/interface/contato_dao_interface.dart';
import 'dados_fake2.dart';

class ContatoDAOFake implements ContatoDAOInterface{

  @override
  Future<Contato> consultar(int id) {
    return Future.value(contatos[id-1]);
  }

  @override
  Future<List<Contato>> consultarTodos() {
    return Future.value(contatos);
  }

  @override
  bool excluir(dynamic id) {
    print('excluir ${contatos[id - 1]}');
    contatos.remove(contatos[id - 1]);
    return true;
  }
  @override
  Contato salvar(Contato contato) {
    if(contato.id == null){
      contato = Contato(
        id: contatos.length,
        nome: contato.nome,
        telefone: contato.telefone,
        email: contato.email,
        urlAvatar: contato.urlAvatar,
      );
      contatos.add(contato);
    }else {
      int i = (contato.id as int) -1;
      contatos[i] = contato;
    }
    print(contato);
    return contato;
  }

  @override
  Contato alterar(Contato contato) {
    // TODO: implement alterar
    throw UnimplementedError();
  }
}