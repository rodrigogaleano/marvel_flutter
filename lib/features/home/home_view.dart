import 'package:flutter/material.dart';

import '../../support/style/app_colors.dart';
import '../../support/style/app_fonts.dart';
import '../../support/utils/localize.dart';
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
    final l10n = Localize.instance.l10n;

    return Scaffold(
      body: SafeArea(
        child: ListenableBuilder(
          listenable: viewModel,
          builder: (_, context) {
            return Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: Text(
                    l10n.appTitle.toLowerCase(),
                    style: AppFonts.robotoNormal(20, AppColors.black).copyWith(letterSpacing: 1.5),
                  ),
                ),
                _bodyWidget,
              ],
            );
          },
        ),
      ),
    );
  }

  Widget get _bodyWidget {
    if (viewModel.isLoading) {
      return const Expanded(
        child: Center(
          child: CircularProgressIndicator(),
        ),
      );
    }

    if (viewModel.errorMessage.isNotEmpty) {
      return Expanded(
        child: Center(
          child: Text(viewModel.errorMessage),
        ),
      );
    }

    return Expanded(
      child: PageView.builder(
        itemCount: viewModel.characterPageViewModels.length,
        itemBuilder: (context, index) {
          final characterViewModel = viewModel.characterPageViewModels[index];

          return CharacterPageView(viewModel: characterViewModel);
        },
      ),
    );
  }
}
