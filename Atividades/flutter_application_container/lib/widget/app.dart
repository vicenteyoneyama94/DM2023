import 'package:flutter/material.dart';
import 'package:flutter_application_container/widget/login.dart';
import 'package:flutter_application_container/widget/detalhes.dart';
import 'package:flutter_application_container/widget/home.dart';
import 'package:flutter_application_container/widget/index.dart';
import 'package:flutter_application_container/widget/lista.dart';
import 'package:flutter_application_container/widget/tipo_pessoa.dart';

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
        '/': (context) => Home(),
        'home': (context) => Index(),
        'login': (context) => Login(),
        'cadastrar': (context) => tipo_Pessoa(),
        'lista': (context) => Lista(),
        'detalhes': (context) => Detalhes(),
      },
    );
  }
}
