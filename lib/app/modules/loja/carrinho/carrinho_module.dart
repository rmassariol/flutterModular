import 'package:modular/app/modules/loja/carrinho/carrinho_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular/app/modules/loja/carrinho/carrinho_page.dart';

class CarrinhoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CarrinhoController()),
      ];

  @override
  List<Router> get routers => [
        // para colocar paametro vai no modulo do carrinho e coloca a /:parametro
        //  Router(Modular.initialRoute, child: (_, args) => CarrinhoPage()), //original
        Router('/:title',
            child: (_, args) => CarrinhoPage(
                  title: args.params['title'],
                )), //com rota
      ];

  static Inject get to => Inject<CarrinhoModule>.of();
}
