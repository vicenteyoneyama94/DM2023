import 'package:flutter/material.dart';
import 'package:flutter_application_container/widget/home.dart';
import 'package:flutter_application_container/widget/index.dart';
import 'package:flutter_application_container/widget/login.dart';
import 'package:flutter_application_container/widget/tipo_pessoa.dart';

class form_Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar:
            AppBar(centerTitle: true, title: Text('Formulário de Cadastro')),
        body: Center(
            child: Column(children: [
          TextField(
            decoration: InputDecoration(border: OutlineInputBorder()),
          ),
          ElevatedButton(
              child: const Text('Concluir'),
              onPressed: () {
                Route rota = MaterialPageRoute(builder: (context) => Login());
                Navigator.pop(context);
                Navigator.pop(context);
              }),
        ])));
  }
}
