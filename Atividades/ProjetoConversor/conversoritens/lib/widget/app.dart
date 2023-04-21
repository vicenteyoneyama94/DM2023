import 'package:conversoritens/widget/add_loja.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Lista de Compras"),
          centerTitle: true,
          backgroundColor: Color.fromARGB(232, 240, 87, 87),
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
          color: Color.fromARGB(255, 255, 254, 254),
          child: Column(
            children: [
              TextField(
                onChanged: (value) {},
              )
            ],
          ),
        ));
  }
}
