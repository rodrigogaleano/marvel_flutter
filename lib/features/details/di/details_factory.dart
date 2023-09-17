import 'package:flutter/material.dart';

import '../../home/models/character.dart';
import '../details_view_controller.dart';
import '../details_view_model.dart';

class DetailsFactory {
  DetailsFactory._();

  static const detailsRoute = '/details';

  static StatefulWidget details({required Character character}) {
    final viewModel = DetailsViewModel(character: character);

    return DetailsViewController(viewModel: viewModel);
  }
}
