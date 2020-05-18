//https://www.youtube.com/watch?v=xUNYglMLOj0&feature=youtu.be
// flutter create modular
// code .

// criando o modulo

// slidy g m modules/compra -c

// -------------------------------------
// rodando o pubx
// flutter pub run build_runner watch

// se der erro rode o
// flutter pub get

// roda novamente
// flutter pub run build_runner watch
// ------------------------------------

import 'package:flutter/material.dart';
import 'package:modular/app/app_module.dart';
import 'package:flutter_modular/flutter_modular.dart';

void main() => runApp(ModularApp(module: AppModule()));
