import 'package:flutter/material.dart';
import 'package:sqlite_demo/app_initialization.dart';
import 'package:sqlite_demo/app_widget.dart';

void main() async {
  await AppInitialization.initialized();

  runApp(AppWidget());
}
