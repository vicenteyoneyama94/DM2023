import 'package:flutter/material.dart';

import 'add_item.dart';

class lista_Itens extends StatelessWidget {
  const lista_Itens({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Lista de Itens'),
        backgroundColor: const Color.fromARGB(232, 240, 87, 87),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Route rota =
                MaterialPageRoute(builder: (context) => add_Item());
                Navigator.push(context, rota);
              },
              icon: const Icon(Icons.add))
        ],
      ),
      body: Container(
        child: Column(
          children: const [
            TextField(
              decoration: InputDecoration(
                labelText: 'Item',
              ),
            ),
          ],
        ),
      ),
    );
  }
}
