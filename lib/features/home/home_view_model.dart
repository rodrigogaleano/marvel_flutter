import '../../support/enums/popular_characters.dart';
import 'components/character/character_page_view.dart';
import 'components/character/character_page_view_model.dart';
import 'home_view_controller.dart';
import 'models/character.dart';
import 'use_cases/get_character_use_case.dart';

class HomeViewModel extends HomeProtocol {
  bool _isLoading = false;
  String _errorMessage = '';

  final List<Character> _characters = [];

  final GetCharactersUseCaseProtocol getCharactersUseCase;

  HomeViewModel({required this.getCharactersUseCase});

  @override
  bool get isLoading => _isLoading;

  @override
  String get errorMessage => _errorMessage;

  @override
  List<CharacterPageViewModelProtocol> get characterPageViewModels {
    return _characters.map((character) {
      return CharacterPageViewModel(character: character);
    }).toList();
  }

  @override
  void getCharacters() {
    _setLoading(true);
    var successfulResponses = 0;

    for (final characterEnum in PopularCharacters.values) {
      getCharactersUseCase.execute(
        characterId: characterEnum.id,
        success: (character) {
          character.imagePath = characterEnum.imagePath;
          _characters.add(character);
          successfulResponses++;
          if (successfulResponses == PopularCharacters.values.length) {
            _setLoading(false);
          }
        },
        failure: (error) {
          _errorMessage = error.description;
          _setLoading(false);
          return;
        },
      );
    }
  }

  void _setLoading(bool loadingStatus) {
    _isLoading = loadingStatus;
    notifyListeners();
  }
}
