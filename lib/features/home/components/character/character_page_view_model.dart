import 'dart:ui';

import '../../../../support/extensions/string.dart';
import '../../models/character.dart';
import 'character_page_view.dart';

class CharacterPageViewModel extends CharacterPageViewModelProtocol {
  final Character character;

  CharacterPageViewModel({required this.character});

  @override
  String get name => character.name.formattedCharacterName();

  @override
  String get imagePath => character.imagePath;

  @override
  Color get backgroundColor => character.backgroundColor;
}
