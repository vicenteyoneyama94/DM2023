import 'package:conversoritens/widget/app.dart';
import 'package:flutter/material.dart';

class add_Item extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Adicionar Itens'),
        ),
        body: Center(
            child: Column(children: [
          TextField(
            decoration: InputDecoration(),
          ),
          ElevatedButton(
              child: const Text('Salvar Item'),
              onPressed: () {
                Route rota = MaterialPageRoute(builder: (context) => App());
              }),
        ])));
  }
}