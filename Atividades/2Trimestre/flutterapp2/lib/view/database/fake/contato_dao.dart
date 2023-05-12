import 'dart:js';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterapp2/view/dto/contato.dart';
import 'package:flutterapp2/view/interface/contato_dao_interface.dart';

class ContatoDAO implements ContatoDAOInterface {
  var listaContatos = <Contato>[
    Contato.dados(
        id: 1,
        nome: 'Jose da Silva',
        email: 'jose@a.com',
        telefone: '(44) 99999-5521',
        URLAvatar:
            'https://cdn.pixabay.com/photo/2023/05/03/09/16/rooster-7967053_1280.jpg'),
    Contato.dados(
        id: 2,
        nome: 'Jose de Silva',
        email: 'jose@b.com',
        telefone: '(44) 98999-5521',
        URLAvatar:
            'https://cdn.pixabay.com/photo/2023/05/03/09/16/rooster-7967053_1280.jpg'),
    Contato.dados(
        id: 3,
        nome: 'Adriano de Silva',
        email: 'adriano@b.com',
        telefone: '(44) 98949-5521',
        URLAvatar:
            'https://cdn.pixabay.com/photo/2023/05/03/09/16/rooster-7967053_1280.jpg')
  ];

  Widget criarLista() {
    ContatoDAOInterface dao = ContatoDAO();
    return FutureBuilder(
        future: dao.buscarTodos(),
        builder: (BuildContext context, AsyncSnapshot<List<Contato>> lista) {
          if (!lista.hasData) return CircularProgressIndicator();
          if (lista.data == null) return Container();
          List<Contato> listaContatos = lista.data!;
          return ListView.builder(
            itemCount: listaContatos.length,
            itemBuilder: (context, indice) {
              var contato = listaContatos[indice];
              return criarItemLista(contato);
            },
          );
        });
  }

  Widget criarItemLista(Contato contato) {
    return ListTile(
      title: Text(contato.nome!),
      subtitle: Text(contato.telefone!),

    );
  }

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
    return Future.value();
  }

  @override
  Future<Contato> salvar(Contato contato) {
    print(contato);
    return Future.value(contato);
  }
}
