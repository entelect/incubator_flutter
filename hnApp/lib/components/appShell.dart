import 'package:flutter/material.dart';

import '../helpers/routes.dart';
import '../pages/home.dart';

class HnApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Map<String, Widget Function(BuildContext)> routes = initNamedRoutes();
    return MaterialApp(
      title: 'Hacker News App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: routes,
      initialRoute: Routes.home,
    );
  }
}
