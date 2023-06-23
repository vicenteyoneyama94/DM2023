import 'package:fastseller_app/rota.dart';
import 'package:fastseller_app/view/form/formulario_produtos.dart';
import 'package:fastseller_app/view/home.dart';
import 'package:fastseller_app/view/listas/lista_bebida.dart';
import 'package:fastseller_app/view/listas/lista_comida.dart';
import 'package:fastseller_app/view/listas/lista_variados.dart';
import 'package:fastseller_app/view/sobreoapp.dart';
import 'package:fastseller_app/view/tela_venda.dart';
import 'package:fastseller_app/view/config/forma_pagamento.dart';
import 'package:fastseller_app/view/historico_venda.dart';
import 'package:fastseller_app/view/config/tela_ajuste.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FastSeller',
      home: const Inicio(),
      routes: {
        Rota.FormaPagamento: (context) => FormaPagamento(),
        Rota.TelaAjuste: (context) => TelaAjuste(),
        Rota.ProdutoForm: (context) => ProdutoForm(),
        Rota.ListaComida:(context) => ListaComida(),
        Rota.ListaBebida:(context) => ListaBebida(),
        Rota.ListaVariados:(context) => ListaVariados(),
        Rota.HistoricoVenda: (context) => HistoricoVenda(),
        Rota.TelaVenda: (context) => TelaVenda(),
        Rota.SobreoApp: (context) => SobreoApp(),
      },
    );
  }
}
