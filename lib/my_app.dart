// Flutter imports:
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

// Package imports:
import 'package:get/get.dart';

// Project imports:
import 'package:flutter_boilerplate_getx/core/navigation/app_pages.dart';
import 'package:flutter_boilerplate_getx/core/translations/translations.dart';
import 'core/theme/theme.dart';
import 'flavors/build_config.dart';
import 'flavors/env_config.dart';

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
      localizationsDelegates: const [
        GlobalMaterialLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
      ],
      supportedLocales: AppTranslation.supportedLocales,
      locale: AppTranslation.supportedLocales.first,
      translationsKeys: AppTranslation.translations,
    );
  }
}
