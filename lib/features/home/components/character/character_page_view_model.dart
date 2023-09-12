import '../../models/character.dart';
import 'character_page_view.dart';

class CharacterPageViewModel extends CharacterPageViewModelProtocol {
  final Character character;

  CharacterPageViewModel({required this.character});

  @override
  String get name => character.name;
}
