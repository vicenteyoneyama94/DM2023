import 'package:conversoritens/widget/home.dart';
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
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Item',
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Quantidade',
            ),
          ),
          TextField(
            keyboardType: TextInputType.number,
            decoration: InputDecoration(
              border: OutlineInputBorder(),
              labelText: 'Valor do Item',
            ),
          ),
          ElevatedButton(
              child: const Text('Salvar Item'),
              onPressed: () {
                Route rota = MaterialPageRoute(builder: (context) => Inicio());
              }),
        ])));
  }
}
