import 'package:flutter/material.dart';

import '../pages/home.dart';

class Routes {
  static const String home = '/home';
}

Map<String, Widget Function(BuildContext)> initNamedRoutes() {
  Map<String, WidgetBuilder> routes = Map();
  routes.addAll({
    Routes.home: (context) => HomePage(),
  });

  return routes;
}
