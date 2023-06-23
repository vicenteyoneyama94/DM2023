import 'package:fastseller_app/dto/bebida.dart';
import 'package:fastseller_app/dto/comida.dart';
import 'package:flutter/material.dart';

class Foto extends StatelessWidget {
  final Comida comida;
  final double? precoComida;
  const fotoComida({required this.comida,this.precoComida,Key? key}) : super(key: key);

  final Bebida bebida;
  final double? precoBebida;
  const Foto()

  @override
  Widget build(BuildContext context) {
    String uri = ({$comida.preco});
    if (Uri.tryParse(uri)!.isAbsolute) {
      return CircleAvatar(
        backgroundImage: NetworkImage(uri),
        radius: preco,
      );
    }else{
      return const CircleAvatar(child: Icon(Icons.person));
    }  
  }
}
