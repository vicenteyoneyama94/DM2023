class Bebida {

  final dynamic id;
  final String nome;
  final int qtde;
  final double preco;


  Bebida({

    this.id,
    required this.nome,
    required this.qtde,
    required this.preco

  });


  @override
  String toString() {
    return '''
    $id
    $nome
    $qtde
    $preco
    ''';
  }

}