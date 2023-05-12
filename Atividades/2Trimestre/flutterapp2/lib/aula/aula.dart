
main(){
  print('abre a pagina');
  buscarDados();
  print('carrega os botões');
  print('carrega os campos');
  print('carrega as imagens');
}

buscarDados(){
  Future.delayed(Duration(seconds: 5), ()=> print('carrega os dados'));
}