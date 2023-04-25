import 'package:conversoritens/widget/cadastro.dart';
import 'package:conversoritens/widget/home.dart';
import 'package:conversoritens/widget/recuperar_senha.dart';
import 'package:flutter/material.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: const Text('Login'),
        ),
        body: Center(
          child: Column(children: [
            const TextField(
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'E-mail',
              ),
            ),
            const TextField(
              obscureText: true,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Senha',
              ),
            ),
            TextButton(
                child: Text('Esqueci minha senha'),
                onPressed: () {
                  Route rota =
                      MaterialPageRoute(builder: (context) => recuperarSenha());
                  Navigator.push(context, rota);
                }),
            ElevatedButton(
              child: const Text('Entrar'),
              onPressed: () {
                Route rota = MaterialPageRoute(builder: (context) => Inicio());
                Navigator.push(context, rota);
              },
            ),
            ElevatedButton(
                child: const Text('Não tem cadastro?'),
                onPressed: () {
                  Route rota =
                      MaterialPageRoute(builder: (context) => Cadastro());
                  Navigator.push(context, rota);
                }),
          ]),
        ));
  }
}
