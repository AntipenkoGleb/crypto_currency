import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';

import 'routing/router.dart';
import 'theming/themes.dart';

final _router = AppRouter();

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      onGenerateTitle: (context) => 'title'.tr(),
      supportedLocales: context.supportedLocales,
      localizationsDelegates: context.localizationDelegates,
      theme: lightTheme,
      darkTheme: darkTheme,
      routerConfig: _router.config(),
    );
  }
}
