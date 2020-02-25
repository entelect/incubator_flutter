import 'package:flutter/material.dart';
import 'package:meta/meta.dart';

import 'environmentSettings.dart';

class EnvConfig extends InheritedWidget {
  final EnvironmentSettings env;

  EnvConfig({
    @required this.env,
    @required Widget child,
  }) : super(child: child);

  static EnvConfig of(BuildContext context) =>
      context.dependOnInheritedWidgetOfExactType<EnvConfig>();

  static EnvironmentSettings settings(BuildContext context) {
    EnvConfig envConfig =
        context.dependOnInheritedWidgetOfExactType<EnvConfig>();
    return envConfig.env;
  }

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) => false;
}
