import 'package:flutter/material.dart';

import '../details_view_controller.dart';

class DetailsFactory {
  DetailsFactory._();

  static const detailsRoute = '/details';

  static StatefulWidget details() {
    return const DetailsViewController();
  }
}
