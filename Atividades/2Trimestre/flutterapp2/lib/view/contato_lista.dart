import 'package:flutter/material.dart';
import 'package:flutterapp2/rota.dart';
import 'package:flutterapp2/view/interface/contato_dao_interface.dart';
import 'package:flutterapp2/view/widget/barra_navegacao.dart';
import 'package:flutterapp2/view/widget/botao_adicionar.dart';
import 'package:flutterapp2/database/fake/contato_dao_fake.dart';
import 'package:flutterapp2/view/widget/foto_contato.dart';
import 'package:flutterapp2/view/widget/painel_botoes.dart';
import 'dto/contato.dart';

class ContatoLista extends StatefulWidget {
  const ContatoLista({Key? key}) : super(key: key);

  @override
  State<ContatoLista> createState() => _ContatoListaState();
}

class _ContatoListaState extends State<ContatoLista> {
  ContatoDAOInterface dao = ContatoDAOFake();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Lista Contatos')),
        body: criarLista(context),
        floatingActionButton: BotaoAdicionar(acao: () =>
            Navigator.pushNamed(context, Rota.contatoForm).then((value) =>
                buscarContatos())),
        bottomNavigationBar: const BarraNavegacao(),
        floatingActionButtonLocation:
        FloatingActionButtonLocation.centerDocked);
  }

  Widget criarLista(BuildContext context) {
    return FutureBuilder(
        future: buscarContatos(),
        builder: (context, AsyncSnapshot<List<Contato>> lista) {
          if (!lista.hasData) return const CircularProgressIndicator();
          if (lista.data == null) return const Text('Não há contatos...');
          List<Contato> listaContatos = lista.data!;
          return ListView.builder(
            itemCount: listaContatos.length,
            itemBuilder: (BuildContext context, indice) {
              var contato = listaContatos[indice];
              return criarItemLista(context, contato);
            },
          );
        });
  }

  Future<List<Contato>> buscarContatos() {
    setState(() {});
    return dao.consultarTodos();
  }

  Widget criarItemLista(BuildContext context, Contato contato) {
    return ListTile(
        title: Text(contato.nome!),
        subtitle: Text(contato.telefone!),
        leading: CircleAvatar(),
        trailing: Container(
            width: 100,
            child: Row(
                children: [
                  IconButton(
                      onPressed: () =>
                          Navigator.pushNamed(context, Rota.contatoForm)
                      , icon: Icon(Icons.edit)),
                  IconButton(onPressed: () {
                    ContatoDAOInterface dao = ContatoDAOFake();
                    dao.excluir(contato.id);
                  }, icon: Icon(Icons.delete))
                ]
            )
        )
    );
  }
}

  class ItemLista extends StatelessWidget {
  final Contato contato;
  final VoidCallback alterar;
  final VoidCallback detalhes;
  final VoidCallback excluir;

  const ItemLista({required this.contato,required this.alterar,
  required this.detalhes, required this.excluir, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: FotoContato(contato: contato),
      title: Text(contato.nome),
      subtitle: Text(contato.telefone),
      trailing: PainelBotoes(
          alterar: alterar,
          excluir: excluir
      ),
      onTap: detalhes,
    );
  }
  }