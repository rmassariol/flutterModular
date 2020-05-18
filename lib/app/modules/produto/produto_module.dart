import 'package:modular/app/modules/produto/produto_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular/app/modules/produto/produto_page.dart';

class ProdutoModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => ProdutoController()),
      ];

  @override
  List<Router> get routers => [
        // Router(Modular.initialRoute, child: (_, args) => ProdutoPage(nomeDaLoja: null,)),

        //    Router('/:nomeLoja/:parametro2/:parametro3', //para pegar mais parametros
        Router('/:nomeLoja',
            child: (_, args) => ProdutoPage(
                  nomeDaLoja: args.params["nomeLoja"],
                )),
      ];

  static Inject get to => Inject<ProdutoModule>.of();
}
