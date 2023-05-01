import 'package:conversoritens/widget/login.dart';
import 'package:flutter/material.dart';

class Cadastro extends StatelessWidget {
  const Cadastro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Novo Usuário'),
          backgroundColor: const Color.fromARGB(232, 240, 87, 87),
      ),
      body: Center(
        child: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Nome',
                ),
              ),
              TextFormField(
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'E-mail',
                ),
              ),
              TextFormField(
                keyboardType: TextInputType.number,
                decoration: const InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Telefone',
                ),
              ),
              ElevatedButton(
                  onPressed: (){
                    Route rota = MaterialPageRoute(builder: (context) => Home());
                    Navigator.pop(context);
                  },
                  child: const Text('Cadastrar'))
            ],
          ),
        ),
      ),
    );
  }
}
