import 'package:fastseller_app/rota.dart';
import 'package:fastseller_app/widget/home.dart';
import 'package:fastseller_app/widget/sobreoapp.dart';
import 'package:fastseller_app/widget/tela_venda.dart';
import 'package:fastseller_app/widget/bebida.dart';
import 'package:fastseller_app/widget/comida.dart';
import 'package:fastseller_app/widget/forma_pagamento.dart';
import 'package:fastseller_app/widget/historico_venda.dart';
import 'package:fastseller_app/widget/tela_ajuste.dart';
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
        Rota.ajusteBebida: (context) => ajusteBebida(),
        Rota.ajusteComida: (context) => ajusteComida(),
        Rota.formaPagamento: (context) => formaPagamento(),
        Rota.historicoVenda: (context) => historicoVenda(),
        Rota.sobreoApp: (context) => sobreoApp(),
        Rota.telaAjuste: (context) => telaAjuste(),
      },
    );
  }
}
