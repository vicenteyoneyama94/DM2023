import 'package:fastseller_app/dto/produto.dart';
import 'package:fastseller_app/inteface/lista_produtodao_interface.dart';
import 'package:flutter/material.dart';
import 'package:fastseller_app/database/sqlite/dao/produto_dao_sqlite.dart';
import 'package:fastseller_app/view/widget/botao.dart';
import 'package:fastseller_app/view/widget/campo_qtde.dart';
import 'package:fastseller_app/view/widget/campo_nome.dart';
import 'package:fastseller_app/view/widget/campo_preco.dart';
import 'package:fastseller_app/view/widget/campo_url.dart';

class ProdutoForm extends StatefulWidget{
  const ProdutoForm({Key? key}) : super(key: key);

  @override
  State<ProdutoForm> createState() => _produtoFormState();
}

class _produtoFormState extends State<ProdutoForm> {
  final formKey = GlobalKey<FormState>();
  dynamic id;

  @override
  Widget build(BuildContext context){
    receberprodutoParaAlteracao(context);
    return Scaffold(
        appBar: AppBar(title: const Text('Cadastro')),
        body: Form(
            key: formKey,
            child: Column(
              children: [
                campoNome,
                campoTelefone,
                campoEmail,
                campoURL,
                criarBotao(context),
              ],
            )
        )
    );
  }

  final campoNome = CampoNome(controle: TextEditingController());
  final campoTelefone = CampoTelefone(controle: TextEditingController());
  final campoEmail = CampoEmail(controle: TextEditingController());
  final campoURL = CampoURL(controle: TextEditingController());

  Widget criarBotao(BuildContext context){
    return Botao(
      context: context,
      salvar: (){
        var formState = formKey.currentState;
        if(formState != null && formState.validate()){
          var  produto = preencherDTO();
          ListaprodutoDAOInterface dao = produtoDAOSQLite();
          dao.salvar(produto);
          Navigator.pop(context);
        }
      },
    );
  }

  void receberprodutoParaAlteracao(BuildContext context){
    var parametro = ModalRoute.of(context);
    if(parametro != null && parametro.settings.arguments != null){
      produto produto = parametro.settings.arguments as produto;
      id = produto.id;
      preencherCampos(produto);
    }
  }

  produto preencherDTO(){
    return produto(
        id: id,
        nome: campoNome.controle.text
    );
  }

  void preencherCampos(produto produto){
    campoNome.controle.text = produto.nome;
  }
}
