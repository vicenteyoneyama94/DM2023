import 'package:flutter/material.dart';
import 'package:flutterapp2/database/fake/contato_dao_fake.dart';
import 'package:flutterapp2/view/dto/contato.dart';
import 'package:flutterapp2/view/interface/contato_dao_interface.dart';
import 'package:flutterapp2/view/widget/botao.dart';
import 'package:flutterapp2/view/widget/campo_email.dart';
import 'package:flutterapp2/view/widget/campo_nome.dart';
import 'package:flutterapp2/view/widget/campo_telefone.dart';
import 'package:flutterapp2/view/widget/campo_url.dart';

class ContatoForm extends StatefulWidget{
  const ContatoForm({Key? key}) : super(key: key);

  @override
  State<ContatoForm> createState() => _ContatoFormState();
}

class _ContatoFormState extends State<ContatoForm> {
  final formKey = GlobalKey<FormState>();
  dynamic id;

  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(title: const Text('Cadastro')),
      body: Form(
        key: formKey,
        child: SingleChildScrollView(
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
          var  contato = preencherDTO();
          ContatoDAOInterface dao = ContatoDAOFake();
          dao.salvar(contato);
          Navigator.pop(context);
        }
      },
    );
  }


void receberContatoParaAlteracao(BuildContext context){
  var parametro = ModalRoute.of(context);
  if(parametro!=null){
    Contato contato = parametro.settings.arguments as Contato;
    id = contato.id;
    preencherCampos(contato);
  }
}

  Contato preencherDTO(){
    return Contato(
        id: id,
        nome: campoNome.controle.text,
        email: campoEmail.controle.text,
        telefone: campoTelefone.controle.text,
        urlAvatar: campoURL.controle.text,
    );
  }

  void preencherCampos(Contato contato){
    campoNome.controle.text = contato.nome;
    campoEmail.controle.text = contato.email;
    campoTelefone.controle.text = contato.telefone;
    campoURL.controle.text = contato.urlAvatar;
  }
}