import 'dart:ui';

import '../../../../support/extensions/string.dart';
import '../../models/character.dart';
import 'character_page_view.dart';

abstract class CharacterPageDelegate {
  void didTapCharacter(Character character);
}

class CharacterPageViewModel extends CharacterPageViewModelProtocol {
  final Character character;
  final CharacterPageDelegate? delegate;

  CharacterPageViewModel({required this.character, required this.delegate});

  @override
  String get name => character.name.formattedCharacterName();

  @override
  String get imagePath => character.imagePath;

  @override
  Color get backgroundColor => character.backgroundColor;

  @override
  void didTapCharacter() {
    delegate?.didTapCharacter(character);
  }
}
