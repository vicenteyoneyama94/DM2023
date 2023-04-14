import 'package:conversoritens/widget/add_item.dart';
import 'package:flutter/material.dart';

class lista_Compras extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lista de Lojas'),
        actions: <Widget>[
          IconButton(
              onPressed: () {
                Route rota =
                    MaterialPageRoute(builder: (context) => add_Item());
              },
              icon: Icon(Icons.add))
        ],
      ),
      body: Center(
          child: Column(
        children: [],
      )),
    );
  }
}
