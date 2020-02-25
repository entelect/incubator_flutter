import 'package:flutter/material.dart';

class EnvironmentSettings {
  String baseApi;
  bool isProduction;

  EnvironmentSettings({
    @required this.baseApi,
    @required this.isProduction,
  });
}
