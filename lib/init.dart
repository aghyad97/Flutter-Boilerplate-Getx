// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:hive_flutter/hive_flutter.dart';

// Project imports:
import 'flavors/build_config.dart';
import 'flavors/env_config.dart';
import 'flavors/environment.dart';

class Initializer {
  static Future<void> initProd() async {
    WidgetsFlutterBinding.ensureInitialized();
    EnvConfig prodConfig = EnvConfig(
      appName: '',
      baseUrl: '',
    );

    BuildConfig.instantiate(
      envType: Environment.PRODUCTION,
      envConfig: prodConfig,
    );

    await Hive.initFlutter();
    await Hive.openBox(BuildConfig.instance.config.appName);
  }

  static Future<void> initDev() async {
    WidgetsFlutterBinding.ensureInitialized();
    EnvConfig devConfig = EnvConfig(
      appName: '',
      baseUrl: '',
    );

    BuildConfig.instantiate(
      envType: Environment.DEVELOPMENT,
      envConfig: devConfig,
    );

    await Hive.initFlutter();
    await Hive.openBox(BuildConfig.instance.config.appName);
  }

  static Future<void> initStaging() async {
    WidgetsFlutterBinding.ensureInitialized();
    EnvConfig stagingConfig = EnvConfig(
      appName: '',
      baseUrl: '',
    );

    BuildConfig.instantiate(
      envType: Environment.STAGING,
      envConfig: stagingConfig,
    );

    await Hive.initFlutter();
    await Hive.openBox(BuildConfig.instance.config.appName);
  }
}
