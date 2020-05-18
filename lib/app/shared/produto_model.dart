class ProdutoModel {
  final int id;
  final String nome;
  final double preco;

  //ProdutoModel(this.id, this.nome, this.preco); //parametros nao nomedos  - sem chaves
  ProdutoModel(
      {this.id, this.nome, this.preco}); //parametros  nomedos  - com chaves

}
