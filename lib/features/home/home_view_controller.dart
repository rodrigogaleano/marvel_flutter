import 'package:flutter/material.dart';

import 'home_view.dart';

abstract class HomeProtocol extends HomeViewProtocol {
  void getCharacters();
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
    widget.viewModel.getCharacters();
  }

  @override
  Widget build(BuildContext context) {
    return HomeView(viewModel: widget.viewModel);
  }
}
