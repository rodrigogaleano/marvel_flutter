import 'package:flutter/material.dart';

import '../../../api/routes/characters_routes.dart';
import '../home_view_controller.dart';
import '../home_view_model.dart';
import '../use_cases/get_character_use_case.dart';

class HomeFactory {
  static const String homeRoute = '/home';

  static StatefulWidget home() {
    final routes = CharactersRoutes();
    final getCharactersUseCase = GetCharactersUseCase(routes: routes);
    final viewModel = HomeViewModel(getCharactersUseCase: getCharactersUseCase);

    return HomeViewController(viewModel: viewModel);
  }
}
