import '../setup/api_host.dart';
import '../setup/api_provider.dart';
import '../setup/endpoint.dart';

abstract class CharactersRoutesProtocol {
  void getCharacters({required characterId, Success? success, Failure? failure});
}

class CharactersRoutes extends CharactersRoutesProtocol {
  final apiProvider = ApiProvider();

  @override
  void getCharacters({required characterId, Success? success, Failure? failure}) {
    final endpoint = Endpoint(
      path: '/characters/$characterId',
      method: 'GET',
      queryParameters: {
        'ts': ApiHost.timestamp,
        'apikey': ApiHost.apiKey,
        'hash': ApiHost.hash,
      },
    );

    apiProvider.request(endpoint: endpoint, success: success, failure: failure);
  }
}
