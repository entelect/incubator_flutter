import 'package:flutter/material.dart';

import 'components/appShell.dart';
import 'env/envConfig.dart';
import 'env/environmentSettings.dart';

void main() {
  var configuredApp = EnvConfig(
    env: EnvironmentSettings(
      baseApi: "https://hacker-news.firebaseio.com/v0/",
      isProduction: true,
    ),
    child: HnApp(),
  );

  runApp(configuredApp);
}
