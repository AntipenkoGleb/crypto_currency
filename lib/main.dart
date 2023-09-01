import 'app/localization.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'app/app.dart';
import 'app/injection.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await EasyLocalization.ensureInitialized();

  configureDependencies();

  runApp(
    EasyLocalization(
      supportedLocales: supportedLocales,
      fallbackLocale: fallbackLocale,
      path: pathToLocalizationAssets,
      child: const App(),
    ),
  );
}
