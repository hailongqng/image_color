import 'package:app/app/app.dart';
import 'package:app/app/models/app_config.dart';
import 'package:flutter/material.dart';

void main() {
  final appConfig = AppConfig();
  runApp(MobileApp(appConfig));
}
