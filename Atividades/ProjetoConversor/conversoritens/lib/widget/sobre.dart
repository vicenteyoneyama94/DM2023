import 'package:conversoritens/widget/login.dart';
import 'package:flutter/material.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(232, 240, 87, 87),
        centerTitle: true,
        title: Text ('Sobre'),
      ),
      body: Container(
        child: Container(
          child: Column(
            children: [
              Container(
                child: const Text('Aplicativo de lista de compras,'),
                decoration: const BoxDecoration(
                  color: Colors.white60,
                ),
            width: MediaQuery.of(context).size.width,
            height: 500,
              ),
              ElevatedButton(onPressed: (){
                Route rota = MaterialPageRoute(builder: (context) => Home());
                Navigator.pop(context, rota);
              },
                  child: const Text('Voltar')),
            ],
          ),
        ),
      ),
    );
  }
}
