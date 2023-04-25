import 'package:flutter/material.dart';

import 'home.dart';
import 'login.dart';

class Structure extends StatelessWidget {
  const Structure({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Lista de Compras',
      home: Home(),
    );
  }
}
