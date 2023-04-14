import 'package:flutter/material.dart';
import 'package:flutter_application_container/widget/form_cadastro.dart';
import 'package:flutter_application_container/widget/lista.dart';

class Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: Text('Cadastro')),
        body: Center(
            child: Column(children: [
          TextField(
            decoration: InputDecoration(),
          ),
          TextField(
            decoration: InputDecoration(),
          ),
          ElevatedButton(
            child: const Text('Entrar'),
            onPressed: () {
              Route rota = MaterialPageRoute(builder: (context) {
                return Lista();
              });
            },
          ),
          ElevatedButton(
              child: const Text('Ainda não tem cadastro?'),
              onPressed: () {
                Route rota =
                    MaterialPageRoute(builder: (context) => form_Cadastro());
              }),
        ])));
  }
}
