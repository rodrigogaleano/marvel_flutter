import 'package:flutter/material.dart';

import 'components/character/character_page_view.dart';

abstract class HomeViewProtocol with ChangeNotifier {
  bool get isLoading;
  String get errorMessage;

  List<CharacterPageViewModelProtocol> get characterPageViewModels;
}

class HomeView extends StatelessWidget {
  final HomeViewProtocol viewModel;

  const HomeView({required this.viewModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: ListenableBuilder(
          listenable: viewModel,
          builder: (_, context) {
            return _bodyWidget;
          },
        ),
      ),
    );
  }

  Widget get _bodyWidget {
    if (viewModel.isLoading) {
      return const Center(child: CircularProgressIndicator());
    }

    // TODO: Implementar placeholder de erro

    return PageView.builder(
      itemCount: viewModel.characterPageViewModels.length,
      itemBuilder: (context, index) {
        final characterViewModel = viewModel.characterPageViewModels[index];
        return CharacterPageView(viewModel: characterViewModel);
      },
    );
  }
}
