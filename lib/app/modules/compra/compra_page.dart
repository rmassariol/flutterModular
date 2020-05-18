import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular/app/shared/produto_model.dart';
import 'compra_controller.dart';

class CompraPage extends StatefulWidget {
  final ProdutoModel produtoModel;
  final String title;
  const CompraPage(
      {Key key, this.title = "Compra", @required this.produtoModel})
      : super(key: key);

  @override
  _CompraPageState createState() => _CompraPageState();
}

class _CompraPageState extends ModularState<CompraPage, CompraController> {
  //use 'controller' variable to access controller

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.produtoModel.nome),
      ),
      body: Column(
        children: <Widget>[
          Text('Preço:'),
          Text('${widget.produtoModel.preco}'),
        ],
      ),
    );
  }
}
