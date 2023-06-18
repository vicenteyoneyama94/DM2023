import 'package:flutter_application_2/view/dto/cidade.dart';
import 'package:flutter_application_2/view/dto/estado.dart';

class Pessoa{

  final dynamic id;
  final String nome;
  final String endereco;
  final String cep;
  final Cidade cidade;
  final Estado estado;

  Pessoa ({
    required this.id,
    required this.nome,
    required this.endereco,
    required this.cep,
    required this.cidade,
    required this.estado
  });

}