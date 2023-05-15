import 'package:flutterapp2/view/dto/contato.dart';
import 'package:flutterapp2/view/interface/contato_dao_interface.dart';

class ContatoDAO implements ContatoDAOInterface {
  var listaContatos = <Contato>[
    Contato.dados(
        id: 1,
        nome: 'Jose da Silva',
        email: 'jose@a.com',
        telefone: '(44) 99999-5521',
        URLAvatar: 'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_1280.png'),
    Contato.dados(
        id: 2,
        nome: 'Jose de Silva',
        email: 'jose@b.com',
        telefone: '(44) 98999-5521',
        URLAvatar: 'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_1280.png'),
    Contato.dados(
        id: 3,
        nome: 'Adriano de Silva',
        email: 'adriano@b.com',
        telefone: '(44) 98949-5521',
        URLAvatar:'https://cdn.pixabay.com/photo/2013/07/13/10/07/man-156584_1280.png'),
  ];


  @override
  Future<Contato> alterar(Contato contato) {
    // TODO: implement alterar
    return Future.value(contato);
  }

  @override
  Future<Contato> buscar(id) {
    // TODO: implement buscar
    return Future.value(listaContatos[id - 1]);
  }

  @override
  Future<List<Contato>> buscarTodos() {
    return Future.value(listaContatos);
  }

  @override
  Future<bool> excluir(id) {
    print(id);
    return Future.value(true);
  }

  @override
  Future<Contato> salvar(Contato contato) {
    print(contato);
    return Future.value(contato);
  }
}
