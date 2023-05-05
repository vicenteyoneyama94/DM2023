import 'package:flutter/material.dart';

class Inicio extends StatelessWidget {
  const Inicio({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('FastSeller'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: <Widget> [
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 600,
              child: const DecoratedBox(
                  decoration: BoxDecoration(
                    color: Colors.amberAccent,
                  ),
                child: ElevatedButton(
                    child: Text('Venda'),
                    onPressed: (){
                      Route rota = MaterialPageRoute(builder: (context))
                    }
                    ),
              ),

            ),
          ],
        ),
      ),
    );
  }
}
