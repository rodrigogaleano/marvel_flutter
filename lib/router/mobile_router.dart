import 'package:flutter/material.dart';

import '../features/details/di/details_factory.dart';
import '../features/home/di/home_factory.dart';
import '../features/home/models/character.dart';

class MobileRouter {
  MobileRouter._();

  static const String initialRoute = HomeFactory.homeRoute;

  static final Map<String, WidgetBuilder> routes = {
    /// Home
    HomeFactory.homeRoute: (_) => HomeFactory.home(),

    /// Details
    DetailsFactory.detailsRoute: (context) {
      final character = ModalRoute.of(context)?.settings.arguments as Character;

      return DetailsFactory.details(character: character);
    },
  };
}
