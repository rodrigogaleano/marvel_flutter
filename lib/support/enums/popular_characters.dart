import 'dart:ui';

import '../style/app_colors.dart';

enum PopularCharacters {
  ironMan,
  spiderMan;

  int get id {
    switch (this) {
      case PopularCharacters.ironMan:
        return 1009368;
      case PopularCharacters.spiderMan:
        return 1009610;
    }
  }

  String get imagePath {
    switch (this) {
      case PopularCharacters.ironMan:
        return 'https://placehold.co/256.png';
      case PopularCharacters.spiderMan:
        return 'https://placehold.co/256.png';
    }
  }

  Color get backgroundColor {
    switch (this) {
      case PopularCharacters.ironMan:
        return AppColors.ironMan;
      case PopularCharacters.spiderMan:
        return AppColors.spiderMan;
    }
  }
}
