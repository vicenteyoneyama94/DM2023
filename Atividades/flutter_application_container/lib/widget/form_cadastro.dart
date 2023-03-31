import 'package:flutter/material.dart';
import 'package:flutter_application_container/widget/home.dart';

class form_Cadastro extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Formulário de Cadastro')),
      body: ElevatedButton(
        child: const Text('Home'),
        onPressed: () {
          Route rota = MaterialPageRoute(builder: (context) {
            return Home();
          });
        },
      ),
    );
  }
}
