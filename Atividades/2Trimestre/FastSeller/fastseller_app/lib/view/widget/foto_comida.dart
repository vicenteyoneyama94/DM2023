import 'package:fastseller_app/dto/comida.dart';
import 'package:flutter/material.dart';

class FotoComida extends StatelessWidget {
  final Comida comida;
  final double? raio;
  const FotoComida({required this.comida,this.raio,Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    String url = ({$comida.preco});
    if (Uri.tryParse(url)!.isAbsolute) {
      return CircleAvatar(
        backgroundImage: NetworkImage(url),
        radius: raio,
      );
    }else{
      return const CircleAvatar(child: Icon(Icons.person));
    }  
  }
}