import 'package:flutter/material.dart';
import 'package:flutter_application_container/widget/cadastro.dart';
import 'package:flutter_application_container/widget/detalhes.dart';
import 'package:flutter_application_container/widget/home.dart';
import 'package:flutter_application_container/widget/lista.dart';
import 'package:flutter_application_container/widget/login.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Container',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        '/': (context) => Login(),
        'home': (context) => Home(),
        'cadastro': (context) => Cadastro(),
        'lista': (context) => Lista(),
        'detalhes': (context) => Detalhes(),
      },
    );
  }
}
