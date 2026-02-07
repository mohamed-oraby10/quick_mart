import 'package:flutter/material.dart';
import 'package:quick_mart/core/init/app_initializer.dart';
import 'package:quick_mart/quick_mart.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppInitializer.init();

  runApp(const QuickMart());
}
