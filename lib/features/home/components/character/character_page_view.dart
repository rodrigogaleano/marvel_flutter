import 'package:flutter/material.dart';

abstract class CharacterPageViewModelProtocol {
  String get name;
}

class CharacterPageView extends StatelessWidget {
  final CharacterPageViewModelProtocol viewModel;

  const CharacterPageView({required this.viewModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(viewModel.name),
      ],
    );
  }
}
