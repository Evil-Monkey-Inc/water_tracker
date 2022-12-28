import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:water_tracker/custom_theme.dart';
import 'package:water_tracker/water_app.dart';
import 'package:water_tracker/generated/codegen_loader.g.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:water_tracker/firebase_options.dart';
import 'package:water_tracker/get_it.dart';

void main() async {
  WidgetsBinding widgetsBinding = WidgetsFlutterBinding.ensureInitialized();
  FlutterNativeSplash.preserve(widgetsBinding: widgetsBinding);
  SystemChrome.setSystemUIOverlayStyle(CustomTheme().systemTheme);
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  setupServicesLocator();
  WidgetsFlutterBinding.ensureInitialized();
  await EasyLocalization.ensureInitialized();
  EasyLocalization.logger.enableBuildModes = [];

  runApp(
    EasyLocalization(
      supportedLocales: const [Locale('en'), Locale('uk')],
      path: 'assets/translations',
      fallbackLocale: const Locale('en'),
      assetLoader: const CodegenLoader(),
      child: const WaterApp(),
    ),
  );
}
