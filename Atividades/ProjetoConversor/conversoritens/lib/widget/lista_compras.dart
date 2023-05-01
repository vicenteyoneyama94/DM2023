import 'package:conversoritens/widget/add_item.dart';
import 'package:flutter/material.dart';

class lista_Compras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Loja Selecionada'),
        centerTitle: true,
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
      body: Center(
          child: Column(
        children: [],
      )),
    );
  }
}
