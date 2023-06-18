import 'package:flutter/material.dart';
import 'package:flutter_application_2/rota.dart';
import 'package:flutter_application_2/view/widget/cidade_lista.dart';
import 'package:flutter_application_2/view/contato_detalhe.dart';
import 'package:flutter_application_2/view/contato_form.dart';
import 'package:flutter_application_2/view/contato_lista.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        Rota.cidadeLista :(context) => const CidadeLista(),
        Rota.contatoLista :(context) => const ContatoLista(),
        Rota.contatoForm :(context) => const ContatoForm(),
        Rota.contatoDetalhe :(context) => const ContatoDetalhe(),
      }
    );
  }
}
