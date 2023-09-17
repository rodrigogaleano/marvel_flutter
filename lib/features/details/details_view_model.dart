import 'dart:ffi';

import '../../support/extensions/string.dart';
import '../home/models/character.dart';
import 'details_view_controller.dart';

class DetailsViewModel extends DetailsViewProtocol {
  final Character character;

  DetailsViewModel({required this.character});

  @override
  String get description => character.description;

  @override
  String get imagePath => character.imagePath;

  @override
  String get name => character.name.formattedCharacterName();

  @override
  void didTapBack() {
    onTapBack?.call();
  }
}
