// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:get/get.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/core/navigation/app_pages.dart';
import 'package:flutter_boilerplate_getx/core/translations/translations.dart';
import 'core/theme/theme.dart';
import 'flavors/build_config.dart';
import 'flavors/env_config.dart';

/// The `MyApp` class is the root widget of the application and sets up the configuration and theme for
/// the app using GetX framework in Dart.

class MyApp extends StatelessWidget {
  static final EnvConfig _envConfig = BuildConfig.instance.config;

  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: _envConfig.appName,
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.base,
      theme: FlutterBoilerplateGetxTheme.standard,
      defaultTransition: Transition.cupertino,
      getPages: AppPages.pages,
      smartManagement: SmartManagement.full,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppTranslation.supportedLocales,
      locale: AppTranslation.supportedLocales.first,
    );
  }
}
