import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';                             
import 'package:example_application/models/filme_item.dart';       
import 'package:example_application/screens/detalhes_filme.dart';
import 'package:example_application/screens/tela_principal.dart';

part 'app_route.gr.dart';

@AutoRouterConfig()
class AppRouter extends _$AppRouter {
  @override
  List<AutoRoute> get routes => [
        AutoRoute(
          page: TelaPrincipalRoute.page,
          initial: true,
        ),
        AutoRoute(
          page: DetalhesFilmeRoute.page,
        ),
      ];
}