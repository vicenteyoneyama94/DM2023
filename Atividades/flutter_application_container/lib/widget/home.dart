import 'package:flutter/material.dart';
import 'package:flutter_application_container/widget/login.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text('Home')),
        body: Center(
            child: ElevatedButton(
                child: const Text('Login'),
                onPressed: () {
                  Route rota = MaterialPageRoute(builder: (context) => Login());
                  //Navigator.of(context).push(rota);
                  Navigator.push(context, rota);
                })));
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