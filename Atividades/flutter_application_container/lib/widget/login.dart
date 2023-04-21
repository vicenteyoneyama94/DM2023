import 'package:flutter/material.dart';
import 'package:flutter_application_container/widget/form_cadastro.dart';
import 'package:flutter_application_container/widget/index.dart';
import 'package:flutter_application_container/widget/lista.dart';
import 'package:flutter_application_container/widget/tipo_pessoa.dart';

class Login extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: Text('Cadastro')),
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
              Route rota = MaterialPageRoute(builder: (context) => Index());
              Navigator.push(context, rota);
            },
          ),
          ElevatedButton(
              child: const Text('Ainda não tem cadastro?'),
              onPressed: () {
                Route rota =
                    MaterialPageRoute(builder: (context) => tipo_Pessoa());
                Navigator.push(context, rota);
              }),
        ])));
  }
}
