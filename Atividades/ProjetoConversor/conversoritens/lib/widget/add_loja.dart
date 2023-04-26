
import 'package:flutter/material.dart';

import 'home.dart';

class add_Loja extends StatelessWidget {
  const add_Loja({super.key});


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Adicionar Loja'),
          backgroundColor: const Color.fromARGB(232, 240, 87, 87),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Nome da Loja',
              ),
            ),
            const TextField(
             decoration: InputDecoration(
               border: OutlineInputBorder(),
               labelText: 'Endereço Completo',
             ),
            ),




            ElevatedButton(
                child: const Text('Salvar Loja'),
                onPressed: () {
                  Route rota =
                      MaterialPageRoute(builder: (context) => Inicio());
                  Navigator.pop(context, rota);
                }),
          ],
        ),
      ),
    );
  }
}
