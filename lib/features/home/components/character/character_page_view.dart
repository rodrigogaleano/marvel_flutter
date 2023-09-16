import 'package:flutter/material.dart';

import '../../../../support/style/app_colors.dart';
import '../../../../support/style/app_fonts.dart';

abstract class CharacterPageViewModelProtocol {
  String get name;
  String get imagePath;
  Color get backgroundColor;
}

class CharacterPageView extends StatelessWidget {
  final CharacterPageViewModelProtocol viewModel;

  const CharacterPageView({required this.viewModel, super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (_, constraints) {
        return Stack(
          alignment: Alignment.center,
          children: [
            Positioned.fill(
              top: constraints.maxHeight * 0.25,
              child: Container(
                decoration: BoxDecoration(
                  color: viewModel.backgroundColor,
                  borderRadius: const BorderRadius.only(
                    topLeft: Radius.circular(16),
                    topRight: Radius.circular(16),
                  ),
                  boxShadow: const [
                    BoxShadow(
                      color: AppColors.lightGrey,
                      offset: Offset(0, -80),
                      blurRadius: .5,
                      spreadRadius: -30,
                    ),
                    BoxShadow(
                      color: AppColors.lightGrey2,
                      offset: Offset(0, -40),
                      blurRadius: .5,
                      spreadRadius: -15,
                    ),
                  ],
                ),
              ),
            ),
            Positioned.fill(
              top: constraints.maxHeight * 0.1,
              child: Padding(
                padding: const EdgeInsets.only(left: 24, right: 24, bottom: 40),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(viewModel.imagePath),
                    const SizedBox(height: 20),
                    Text(
                      viewModel.name,
                      style: AppFonts.robotoBold(56, AppColors.white),
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                    ),
                    const Spacer(),
                    Row(
                      children: [
                        Text(
                          'know more',
                          style: AppFonts.robotoNormal(18, AppColors.white),
                        ),
                        const Icon(
                          Icons.arrow_forward,
                          color: AppColors.white,
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
