import 'package:flutter/material.dart';

class Produto extends StatelessWidget {
  const Produto({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Cadastro de produtos'),
        ),
        body: Form(
          child: Column(
            children: [
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Produto'),
                  hintText: 'Digite o nome do produto',
                ),
                validator: (validaCampo) {
                  if (validaCampo == null || validaCampo.isEmpty) {
                    return ('Campo Obrigatório');
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Estoque'),
                  hintText: 'Digite a quantidade',
                ),
                validator: (validaCampo) {
                  if (validaCampo == null || validaCampo.isEmpty) {
                    return ('Valide o estoque');
                  }
                  return null;
                },
              )
            ],
          ),
        )
    );
  }
}
