import 'package:flutter/material.dart';

import '../features/home/di/home_factory.dart';

class MobileRouter {
  MobileRouter._();

  static const String initialRoute = HomeFactory.homeRoute;

  static final Map<String, WidgetBuilder> routes = {
    /// Home
    HomeFactory.homeRoute: (_) => HomeFactory.home(),
  };
}
