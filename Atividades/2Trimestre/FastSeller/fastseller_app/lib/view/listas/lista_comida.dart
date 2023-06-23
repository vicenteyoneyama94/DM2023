import 'dart:ffi';

import 'package:fastseller_app/database/sqlite/dao/comida_dao_sqlite.dart';
import 'package:fastseller_app/dto/comida.dart';
import 'package:fastseller_app/inteface/lista_comidadao_interface.dart';
import 'package:fastseller_app/rota.dart';
import 'package:fastseller_app/view/widget/barra_navegacao.dart';
import 'package:fastseller_app/view/widget/botao_adicionar.dart';
import 'package:fastseller_app/view/widget/painel_botoes.dart';
import 'package:flutter/material.dart';

class ListaComida extends StatefulWidget{
  const ListaComida({Key? key}) : super(key: key);

  @override
  State<ListaComida> createState() => _ListaComidatate();
}

class _ListaComidatate extends State<ListaComida> {
  ListaComidaDAOInterface dao = ComidaDAOSQLite();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Lista de Salgados')),
        body: criarLista(context),
        floatingActionButton: BotaoAdicionar(acao:
            ()=> Navigator.pushNamed(context, Rota.ListaComida)
                .then((value)=>buscarComida())),
        bottomNavigationBar: const BarraNavegacao(),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked
    );
  }

  Widget criarLista(BuildContext context) {
    return FutureBuilder(
      future: buscarComida(),
      builder: (context,AsyncSnapshot<List<Comida>> lista){
        if(!lista.hasData) return const CircularProgressIndicator();
        if(lista.data == null) return const Text('Não há Comida...');
        List<Comida> listaComida = lista.data!;
        return ListView.builder(
          itemCount: listaComida.length,
          itemBuilder: (context, indice) {
            var comida = listaComida[indice];
            return criarItemLista(context, comida);
          },
        );
      },
    );
  }

  Future<List<Comida>> buscarComida(){
    setState(() {});
    return dao.consultarTodos();
  }

  Widget criarItemLista(BuildContext context, Comida comida){
    return ItemLista(
        comida: comida,
        detalhes: () {
          Navigator.pushNamed(context, Rota.ProdutoForm,
              arguments: comida).then((value) => buscarComida());
        },
        alterar: (){
          Navigator.pushNamed(context, Rota.ProdutoForm,
              arguments: comida).then((value) => buscarComida());
        },
        excluir: (){
          dao.excluir(comida.id);
          buscarComida();
        }
    );
  }
}

class ItemLista extends StatelessWidget {
  final Comida comida;
  final VoidCallback alterar;
  final VoidCallback detalhes;
  final VoidCallback excluir;

  const ItemLista({required this.comida,required this.alterar, required this.detalhes, required this.excluir, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return ListTile(
      title: Text(comida.nome),
      subtitle: Text(comida.preco.toString()),
      trailing: PainelBotoes(
          alterar: alterar,
          excluir: excluir
      ),
      onTap: detalhes,
    );
  }
}
