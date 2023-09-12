import '../style/app_assets.dart';

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
        return AppAssets.ironMan;
      case PopularCharacters.spiderMan:
        // TODO: Colocar a imagem correta
        return AppAssets.ironMan;
    }
  }
}
