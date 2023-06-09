import 'package:conversoritens/widget/add_loja.dart';
import 'package:flutter/material.dart';

import 'lista_compras.dart';

class Inicio extends StatelessWidget {
  const Inicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lista de Compras"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(232, 240, 87, 87),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Route rota =
                      MaterialPageRoute(builder: (context) => add_Loja());
                  Navigator.push(context, rota);
                },
                icon: Icon(Icons.add))
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: 300,
          color: const Color.fromARGB(255, 255, 255, 255),
          child: Column(
            children: [
              ElevatedButton(onPressed: (){
                Route rota = MaterialPageRoute(
                    builder: (context) => lista_Compras());
                Navigator.push(context, rota);
              }, child: Text('Loja Selecionada'))
            ],
          ),
        ));
  }
}
