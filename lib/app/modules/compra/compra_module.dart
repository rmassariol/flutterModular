import 'package:modular/app/modules/compra/compra_controller.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:modular/app/modules/compra/compra_page.dart';

class CompraModule extends ChildModule {
  @override
  List<Bind> get binds => [
        Bind((i) => CompraController()),
      ];

  @override
  List<Router> get routers => [
        Router(Modular.initialRoute,
            child: (_, args) => CompraPage(
                  produtoModel: args.data,
                )),
        //Router("/carrinho", module: CarrinhoModule() ), //caso eu tivesse um outra pasta com rota dentro da pasta compra
      ];

  static Inject get to => Inject<CompraModule>.of();
}
