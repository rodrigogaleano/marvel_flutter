import 'package:flutter/material.dart';

import '../details/di/details_factory.dart';
import 'home_view.dart';
import 'models/character.dart';

abstract class HomeProtocol extends HomeViewProtocol {
  void getCharacters();

  void Function(Character character)? onTapCharacter;
}

class HomeViewController extends StatefulWidget {
  final HomeProtocol viewModel;

  const HomeViewController({required this.viewModel, super.key});

  @override
  State<HomeViewController> createState() => _HomeViewControllerState();
}

class _HomeViewControllerState extends State<HomeViewController> {
  @override
  void initState() {
    super.initState();
    _bind();
    widget.viewModel.getCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return HomeView(viewModel: widget.viewModel);
  }

  void _bind() {
    widget.viewModel.onTapCharacter = (character) {
      Navigator.pushNamed(context, DetailsFactory.detailsRoute);
    };
  }
}
