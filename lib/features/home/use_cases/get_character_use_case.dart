import '../../../api/routes/characters_routes.dart';
import '../../../models/server_error.dart';
import '../models/character.dart';

typedef Success = void Function(Character character);
typedef Failure = void Function(ServerError error);

abstract class GetCharactersUseCaseProtocol {
  void execute({required int characterId, Success? success, Failure? failure});
}

class GetCharactersUseCase extends GetCharactersUseCaseProtocol {
  final CharactersRoutesProtocol routes;

  GetCharactersUseCase({required this.routes});

  @override
  void execute({required int characterId, Success? success, Failure? failure}) {
    routes.getCharacters(
      characterId: characterId,
      success: (response) {
        try {
          final result = response['data']['results'] as List<dynamic>;
          final character = Character.fromMap(result.first);
          success?.call(character);
        } on Error catch (error) {
          failure?.call(error.internalError());
        }
      },
      failure: (error) {
        failure?.call(error.asServerError());
      },
    );
  }
}
