import 'package:conversoritens/widget/lista_compras.dart';
import 'package:flutter/material.dart';

class add_Loja extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(centerTitle: true, title: Text('Adicionar Loja')),
      body: Center(
        child: Column(
          children: [
            ElevatedButton(
                child: const Text('Salvar Loja'),
                onPressed: () {
                  Route rota =
                      MaterialPageRoute(builder: (context) => lista_Compras());
                  Navigator.pop(context, rota);
                }),
          ],
        ),
      ),
    );
  }
}
