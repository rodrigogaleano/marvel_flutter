import 'package:flutter/material.dart';

abstract class CharacterPageViewModelProtocol {
  String get name;
  String get imagePath;
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
        Image.asset(viewModel.imagePath, height: 300),
      ],
    );
  }
}
