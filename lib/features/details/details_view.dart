import 'package:flutter/material.dart';

import '../../support/style/app_assets.dart';
import '../../support/style/app_colors.dart';
import '../../support/style/app_fonts.dart';

abstract class DetailsViewModelProtocol with ChangeNotifier {
  String get imagePath;
  String get name;
  String get description;

  void didTapBack();
}

class DetailsView extends StatelessWidget {
  final DetailsViewModelProtocol viewModel;

  const DetailsView({required this.viewModel, super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: LayoutBuilder(
          builder: (_, constraints) {
            return CustomScrollView(
              slivers: [
                SliverAppBar(
                  leading: IconButton(
                    icon: const Icon(
                      Icons.arrow_back_ios,
                      color: AppColors.black,
                    ),
                    onPressed: viewModel.didTapBack,
                  ),
                ),
                SliverPadding(
                  padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
                  sliver: SliverToBoxAdapter(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Image.asset(viewModel.imagePath),
                        const SizedBox(height: 12),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                viewModel.name,
                                style: AppFonts.robotoSemiBold(56, AppColors.black),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              width: constraints.maxWidth * 0.3,
                              child: Image.asset(AppAssets.marvelLogo, height: 40),
                            ),
                          ],
                        ),
                        const Divider(height: 40),
                        Text(
                          viewModel.description,
                          style: AppFonts.robotoNormal(16, AppColors.black).copyWith(height: 1.5),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            );
          },
        ),
      ),
    );
  }
}
