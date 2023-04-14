import 'package:conversoritens/widget/add_loja.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Conversor Início"),
          centerTitle: true,
          backgroundColor: const Color.fromARGB(153, 99, 21, 21),
          actions: <Widget>[
            IconButton(
                onPressed: () {
                  Route rota =
                      MaterialPageRoute(builder: (context) => add_Loja());
                  navigator.push(context, rota);
                },
                icon: Icon(Icons.add))
          ],
        ),
        body: Container(
          alignment: Alignment.center,
          width: MediaQuery.of(context).size.width,
          height: 300,
          color: Color.fromARGB(255, 197, 186, 186),
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
