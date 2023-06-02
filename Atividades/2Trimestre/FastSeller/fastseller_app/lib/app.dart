import 'package:fastseller_app/rota.dart';
import 'package:fastseller_app/view/home.dart';
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
        Rota.telaVenda: (context) => Venda(),
        Rota.formaPagamento: (context) => formaPagamento(),
        Rota.historicoVenda: (context) => historicoVenda(),
        Rota.sobreoApp: (context) => sobreoApp(),
        Rota.telaAjuste: (context) => telaAjuste(),
      },
    );
  }
}
