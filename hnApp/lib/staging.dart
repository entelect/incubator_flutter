import 'package:flutter/material.dart';

import 'components/appShell.dart';
import 'env/envConfig.dart';
import 'env/environmentSettings.dart';

void main() {
  var configuredApp = EnvConfig(
    env: EnvironmentSettings(
      baseApi: "http://staging.test.xyz",
      isProduction: false,
    ),
    child: HnApp(),
  );

  runApp(configuredApp);
}
