import 'dart:ui';

import '../style/app_assets.dart';
import '../style/app_colors.dart';

enum PopularCharacters {
  ironMan,
  spiderMan,
  hulk,
  captainAmerica;

  int get id {
    switch (this) {
      case PopularCharacters.ironMan:
        return 1009368;
      case PopularCharacters.spiderMan:
        return 1009610;
      case PopularCharacters.hulk:
        return 1009351;
      case PopularCharacters.captainAmerica:
        return 1009220;
    }
  }

  String get imagePath {
    switch (this) {
      case PopularCharacters.ironMan:
        return AppAssets.ironMan;
      case PopularCharacters.spiderMan:
        return AppAssets.spiderMan;
      case PopularCharacters.hulk:
        return AppAssets.hulk;
      case PopularCharacters.captainAmerica:
        return AppAssets.captainAmerica;
    }
  }

  Color get backgroundColor {
    switch (this) {
      case PopularCharacters.ironMan:
        return AppColors.ironMan;
      case PopularCharacters.spiderMan:
        return AppColors.spiderMan;
      case PopularCharacters.hulk:
        return AppColors.hulk;
      case PopularCharacters.captainAmerica:
        return AppColors.captainAmerica;
    }
  }
}
