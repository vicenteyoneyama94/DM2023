import 'package:flutter/material.dart';
import 'package:flutterapp2/rota.dart';
import 'package:flutterapp2/view/interface/contato_dao_interface.dart';

import 'database/fake/contato_dao.dart';
import 'dto/contato.dart';

class ContatoLista extends StatelessWidget {
  const ContatoLista({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Lista Contatos')),
        body: criarLista(),
        floatingActionButton: criarBotao(context),
        bottomNavigationBar: criarBarraNavegacao(),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked);
  }

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
        leading: CircleAvatar(),
        trailing: Container(
            width: 100,
            child: Row(
                children: [
              IconButton(onPressed: (){
                    ContatoDAOInterface dao = ContatoDAO();
                    dao.alterar(contato.id);
                  }, icon: Icon(Icons.edit)),
              IconButton(onPressed: (){
                    ContatoDAOInterface dao = ContatoDAO();
                    dao.excluir(contato.id);
                  }, icon: Icon(Icons.delete))
              ]
            )
        )
    );
  }

  BottomAppBar criarBarraNavegacao() {
    return BottomAppBar(
      shape: const CircularNotchedRectangle(),
      child: Container(height: 50.0),
    );
  }

  FloatingActionButton criarBotao(BuildContext context) {
    return FloatingActionButton(
      onPressed: () => Navigator.pushNamed(context, Rota.contatoForm),
      tooltip: 'Adicionar novo contato',
      child: const Icon(Icons.add),
    );
  }
}
