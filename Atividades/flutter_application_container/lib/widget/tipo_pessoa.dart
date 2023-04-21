import 'package:flutter/material.dart';
import 'package:flutter_application_container/widget/form_cadastro.dart';

class tipo_Pessoa extends StatelessWidget {
  const tipo_Pessoa({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(centerTitle: true, title: const Text('Escolha o tipo')),
        body: Center(
            child: Column(children: [
          ElevatedButton(
              child: const Text('Pessoa Física'),
              onPressed: () {
                Route rota =
                    MaterialPageRoute(builder: (context) => form_Cadastro());
                //Navigator.of(context).push(rota);
                Navigator.push(context, rota);
              }),
          ElevatedButton(
              child: const Text('Pessoa Jurídica'),
              onPressed: () {
                Route rota =
                    MaterialPageRoute(builder: (context) => form_Cadastro());
                Navigator.push(context, rota);
              }),
        ])));
  }
}

//Aula Container
 /*return Container(
      color: Colors.yellow,
      child: Container(
        alignment: Alignment.center,
        color: Colors.green,
        child: Container(
          color: Colors.red,
          width: 100,
          height: 50,
        ),
      ),
    );
    */